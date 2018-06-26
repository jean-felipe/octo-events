module Labels
  class Create
    attr_reader :label

    def self.process(labels_params)
      new.process(labels_params)
    end

    def process(labels_params)
      @label = Label.new(labels_params)
      @label.save!
    end
  end
end
