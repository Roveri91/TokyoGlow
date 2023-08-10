class Hospital < ApplicationRecord
  has_many :appointments

  include PgSearch::Model
  pg_search_scope :search_by_name_and_address_and_price_range_and_description,
    against: [ :name, :address,:price_range, :description ],
    # associated_against: {
    #   user: [:first_name]
    # }
    using: {
      tsearch: { prefix: true } # tsearch is full text search
  }
end
