class Post < ApplicationRecord
  belongs_to :user
  has_many :replies

  validates :title, :category, :content, presence: true

  include PgSearch::Model

  pg_search_scope :search_by_content_title_category,
    against: [ :content, :title, :category ],
    using: {
      tsearch: { prefix: true }
  }
end
