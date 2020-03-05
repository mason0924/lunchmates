class Event < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  geocoded_by :restaurant_address
  after_validation :geocode, if: :will_save_change_to_restaurant_address?
  has_many_attached :photos
end
