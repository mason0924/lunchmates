class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages, dependent: :destroy 
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events
  has_many :bookings
  enum preference: ["Chinese","Dessert","Fast food","German","Greek","Indian","Italian","Japanese","Lebanese","Middle Eastern","New American","Vegan","Vegetarian"]
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end

