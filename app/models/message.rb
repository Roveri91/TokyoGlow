class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  validates :content, :conversation_id, :user_id, presence: true

  def sender?(a_user)
    user.id == a_user.id
  end
end
