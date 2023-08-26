class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :appointments
  has_many :attendants
  has_many :events, through: :attendants
  has_many :posts
  has_many :replies
  has_many :reviews
  has_many :conversations
  has_many :messages
  validates :username, presence: true
  validates :due_date, presence: true
  has_one_attached :avatar_cl
end
