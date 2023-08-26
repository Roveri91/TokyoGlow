class Attendant < ApplicationRecord
  belongs_to :user
  belongs_to :event
  enum status: { pending: 0, attending: 1, declined: 2 }, _default: 0
end
