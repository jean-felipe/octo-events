require 'rails_helper'

RSpec.describe IssuesController do
  describe '#index' do
    context 'when list all events from an issue' do
      xit 'return all events' do
        get :index, number: 1
      end
    end
  end
end