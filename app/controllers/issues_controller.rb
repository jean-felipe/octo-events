class IssuesController < ApplicationController
  def index
    @issue = Issue.find_by(number: params[:number])
    if @issue.nil?
      render json: 'Nenhuma issue encontrada', status: 404
    else
      render json: @issue.events, status: 200
    end
  end
end
