class EventsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :load_params

  def list
    @issue = Issue.find_by(number: @issue_params[:number])
    @issue = Issues::Create.process(issue_params) if @issue.nil?
    
    if !@comment_params.nil?
      @comment = Comment.find_by(uuid: @comment_params[:uuid])
      @comment = Comments::Create.process(@comment_params.except(:user)) if @comment.nil?
    end

    label_params.each do |label|
      @label = Label.find_by(uuid: label[:uuid])
      @label = Labels::Create.process(label) if @label.nil?
    end
    
    @event = Events::Create.process(event_params, @coment, @issue.id)
  end

  private

  def load_params
    @issue_params = issue_params
    @labels_params = label_params
    @comment_params = comment_params unless params[:comment].nil?
  end

  def issue_params
    {
      number: params[:issue][:number],
      body: params[:issue][:body],
      comments: params[:issue][:comments],
      comments_url: params[:issue][:comments_url],
      events_url: params[:issue][:events_url],
      html_url: params[:issue][:html_url],
      labels_url: params[:issue][:labels_url],
      number: params[:issue][:number],
      repository_url: params[:issue][:repository_url],
      state: params[:issue][:state],
      url: params[:issue][:url],
      uuid: params[:issue][:uuid]
    }
  end

  def label_params
    params[:issue][:labels].map do |label, index|
      label = {
        uuid: label[:id],
        node_id: label[:node_id],
        name: label[:name],
        color: label[:color],
        url: label[:url],
        default: label[:default]
      }
    end
  end

  def comment_params
    return if params[:comment].nil?
    {
      url: params[:comment][:url],
      uuid: params[:comment][:id],
      body: params[:comment][:body],
      user: {
        name: params[:comment][:user][:login],
        avatar: params[:comment][:user][:avatar_url]
      }
    }
  end

  def event_params
    {
      action: params[:issue][:state]
    }
  end
end
