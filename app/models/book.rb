class Book < ApplicationRecord

  belongs_to :user
  belongs_to :author
  has_many :users_favorite_books

  validates :title, :description, :public_url, :user_id, :author_id, presence: true
end
