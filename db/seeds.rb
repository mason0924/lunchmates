# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed file

# User

user_1 = User.new( user_firstname: Azadeh, user_lastname: Aram, picture: img_1)
user_2 = User.new(id: 2, user_firstname: Mana, user_lastname: Jalili, picture: img_2)
user_3 = User.new(id: 3, user_firstname: Mattia, user_lastname: Macor, picture: img_3)
user_4 = User.new(id: 4, user_firstname: Mason, user_lastname: Tan, picture: img_4)

# Booking
booking_1 = Booking.new( user_id: user_1, event_id: event_1)
booking_2 = Booking.new(id: 2, user_id: user_2, event_id: event_2)
booking_3 = Booking.new(id: 3, user_id: user_3, event_id: event_3)
booking_4 = Booking.new(id: 4, user_id: user_4, event_id: event_4)

# Event
event_1 = Event.new(id: 1, event_name: " Mix and match", description: " let's Mix and Match ", date: " 01.03.2020 ", time: " 1pm " ,hosted_by: user_1, restaurant_name: " Mix and Match ", restaurant_address: " Markgrafenstraße 56, 10117 Berlin ", restaurant_price: " $$ ")
event_2 = Event.new(id: 2, event_name: " KFC lovers", description: " let's go to KFC ", date: "01.03.2020 ", time: "1:13pm" , hosted_by: user_2, restaurant_name: " KFC ", restaurant_address: " Badstraße 4, 13357 Berlin ", restaurant_price: "$")
event_3 = Event.new(id: 3, event_name: " Ishin ", description: " Who's in for Ishin ", date: " 01.03.2020 ", time: " 1pm " ,hosted_by: user_3, restaurant_name: " Ishin ", restaurant_address: " Charlottenstraße 16, 10117 Berlin ", restaurant_price: " $ ")
event_4 = Event.new(id: 4, event_name: " Maximilians lovers", description: " let's Mix and Match ", date: " 01.03.2020 ", time: " 2pm " ,hosted_by: user_1, restaurant_name: " Maximilians ", restaurant_address: "  Friedrichstraße 185-190, 10117 Berlin ", restaurant_price: " $$$ ")
