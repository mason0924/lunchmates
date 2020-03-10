class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events
  has_many :bookings
  enum preference: ["Italian", "Fast food", "Japanese", "Middle Eastern", "German", "Vegetarian", "Indian", "New American"]
end
