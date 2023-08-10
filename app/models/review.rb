class Review < ApplicationRecord
  belongs_to :hospital

  validates :title, presence: true
  validates :comment, presence: true
  validates :rating, presence: true
end
