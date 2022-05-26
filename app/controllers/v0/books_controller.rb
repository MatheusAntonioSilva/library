module V0
  class BooksController < ::V0::ApplicationController

    before_action :authenticate_user!

    def index
      render plain: 'ok'
    end
  end
end
