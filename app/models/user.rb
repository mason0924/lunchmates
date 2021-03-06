class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :messages, dependent: :destroy 
  has_one_attached :photo
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :events
  has_many :bookings
  enum preference: ["Alcohol", "American", "Bakery", "Brunch", "Bubble Tea", "Cafe", "Chinese", "Dessert", "Fast food", "French", "Fusion", "German", "Greek", "Halal", "Healthy", "Indian", "Italian", "Japanese", "Korean", "Latin American", "Lebanese", "Mexican", "Middle Eastern", "New American", "Pizza", "Seafood", "Smoothies & Juices", "Spanish", "Thai", "Vegan", "Vegetarian"]
  def get_photo_url
    return photo.attached? ? photo.key : "https://res.cloudinary.com/lunchmates/image/upload/v1590168040/User%20Pictures/default-avatar-images_uiehqp.png"
  end
end

