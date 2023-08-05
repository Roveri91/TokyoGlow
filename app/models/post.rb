class Post < ApplicationRecord
  belongs_to :user
  has_many :replies

  validates :title, :category, :content, presence: true
end
