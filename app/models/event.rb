class Event < ApplicationRecord
  belongs_to :user
  has_many :attendants
  has_one_attached :photo

  enum :status, { pending: 0, attending: 1, declined: 2 }, _default: 0

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
# title, :content, :date, :location, :time
