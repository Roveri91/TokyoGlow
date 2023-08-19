class Review < ApplicationRecord
  belongs_to :hospital
  belongs_to :user

  validates :title, presence: true
  validates :comment, presence: true
  validates :rating, presence: true
end
