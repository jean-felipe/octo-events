module Comments
  class Create
    attr_reader :comment

    def self.process(comments_params)
      new.process(comments_params)
    end

    def process(comments_params)
      @comment = Comment.new(comments_params)
      @comment.save!
    end
  end
end
