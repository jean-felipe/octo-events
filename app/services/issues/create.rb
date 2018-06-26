module Issues
  class Create
    attr_reader :issue

    def self.process(issue_params)
      new.process(issue_params)
    end

    def process(issue_params)
      @issue = Issue.new(issue_params)
      @issue.save!
    end
  end
end
