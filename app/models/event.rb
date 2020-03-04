class Event < ApplicationRecord
  belongs_to :user
  geocoded_by :restaurant_address
  after_validation :geocode, if: :will_save_change_to_restaurant_address?
end
