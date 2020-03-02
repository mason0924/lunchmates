# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed file

# User

user_1 = User.new( first_name: "Azadeh", last_name: "Aram", email:"azadeh@gmail.com", password: "123456" )
user_2 = User.new( first_name: "Mana", last_name: "Jalili", email:"mana@gmail.com", password: "123456" )
user_3 = User.new( first_name: "Mattia", last_name: "Macor", email:"mattia@gmail.com", password: "123456" )
user_4 = User.new( first_name: "Mason", last_name: "Tan", email:"mason@gmail.com", password: "123456" )

# Event
event_1 = Event.new( event_name: " Mix and match", description: " let's Mix and Match " ,user_id: user_1, restaurant_name: " Mix and Match ", restaurant_address: " Markgrafenstraße 56, 10117 Berlin ", restaurant_price_range: 2 )
event_2 = Event.new( event_name: " KFC lovers", description: " let's go to KFC ",  user_id: user_2, restaurant_name: " KFC ", restaurant_address: " Badstraße 4, 13357 Berlin ", restaurant_price_range: 1 )
event_3 = Event.new( event_name: " Ishin ", description: " Who's in for Ishin " ,user_id: user_3, restaurant_name: " Ishin ", restaurant_address: " Charlottenstraße 16, 10117 Berlin ", restaurant_price_range: 1 )
event_4 = Event.new( event_name: " Maximilians lovers", description: " let's go to Maximilians ", user_id: user_1, restaurant_name: " Maximilians ", restaurant_address: "  Friedrichstraße 185-190, 10117 Berlin ", restaurant_price_range: 3)


# Booking
booking_1 = Booking.new( user_id: user_1, event_id: event_1 )
booking_2 = Booking.new( user_id: user_2, event_id: event_2 )
booking_3 = Booking.new( user_id: user_3, event_id: event_3 )
booking_4 = Booking.new( user_id: user_4, event_id: event_4 )
