module BookManager
  class Destroyer < ApplicationManager::Destroyer

    private

    def instance
      ::Book.find(id)
    end
  end
end
