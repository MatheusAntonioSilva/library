module UserManager
  class Creator < ApplicationManager::Creator

    attr_reader :args

    def initialize(args)
      @args = args
    end

    private

    def execute_creation
      ::User.create!(first_name: args[:user][:first_name], last_name: args[:user][:last_name], email: args[:user][:email])
    end
  end
end
