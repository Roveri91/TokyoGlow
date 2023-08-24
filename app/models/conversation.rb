class Conversation < ApplicationRecord
  belongs_to :user_from, class_name: "User", foreign_key: "user_from_id"
  belongs_to :user_to, class_name: "User", foreign_key: "user_to_id"

  has_many :messages, dependent: :destroy

  scope :between, -> (user_from_id,user_to_id) do
    where("(conversations.user_from_id = ? AND conversations.user_to_id = ?) OR (conversations.user_to_id = ? AND conversations.user_from = ?)", user_from_id, user_to_id, user_from_id, user_to_id)
  end
end
