class Event < ApplicationRecord
  belongs_to :user
  has_many :attendants, dependent: :destroy
  has_many :users, through: :attendants
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_title_and_content_and_location_and_date,
    against: [ :title, :location, :date, :content ],
    # associated_against: {
    #   user: [:first_name]
    # }
    using: {
      tsearch: { prefix: true } # tsearch is full text search
  }
end
