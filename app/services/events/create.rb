module Events
  class Create
    attr_reader :event
    def self.process(event_params, comment_id, issue_id)
      new.process(event_params, comment_id, issue_id)
    end

    def process(event_params, comment_id, issue_id)
      @event = Event.new(event_params)
      @event.comment_id = comment_id
      @event.issue_id = issue_id
      @event.save!
    end
  end
end
