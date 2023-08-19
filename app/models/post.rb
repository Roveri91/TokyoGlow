class Post < ApplicationRecord
  belongs_to :user
  has_many :replies, dependent: :destroy

  validates :title, :category, :content, presence: true

  include PgSearch::Model

  pg_search_scope :general_search,
    against: [ :content, :title, :category ],
    associated_against: {
      user: [ :username ]
    },
    using: {
      tsearch: { prefix: true }
  }
end
