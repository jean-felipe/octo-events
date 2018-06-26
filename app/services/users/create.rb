module Users
  class Create
    attr_reader :user
    
    def self.process(users_params)
      new.process(users_params)
    end

    def process(users_params)
      @user = User.new(users_params)
      @user.save!
    end
  end
end
