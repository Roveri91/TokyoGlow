class Review < ApplicationRecord
  belongs_to :hospital
  belongs_to :user

  validates :title, presence: true
  validates :comment, presence: true
  validates :rating, presence: true
  validates :rating, numericality: true
  validates :rating, comparison: { greater_than: 0 }
  validates :rating, comparison: { less_than_or_equal_to: 5 }
end
