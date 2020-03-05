# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed file

puts 'Destroying all bookings'
Booking.destroy_all
puts 'Destroying all events'
Event.destroy_all
puts 'Destroying all User'
User.destroy_all


puts 'Creating Users'
# User
user_1 = User.create!( first_name: "Azadeh", last_name: "Aram", email:"azadeh@gmail.com", password: "123456" )
user_2 = User.create!( first_name: "Mana", last_name: "Jalili", email:"mana@gmail.com", password: "123456" )
user_3 = User.create!( first_name: "Mattia", last_name: "Macor", email:"mattia@gmail.com", password: "123456" )
user_4 = User.create!( first_name: "Mason", last_name: "Tan", email:"mason@gmail.com", password: "123456" )
user_5 = User.create!( first_name: "Sara", last_name: "Lee", email:"sara@gmail.com", password: "123456" )
user_6 = User.create!( first_name: "Kate", last_name: "Cole", email:"kate@gmail.com", password: "123456" )
user_7 = User.create!( first_name: "Martin", last_name: "King", email:"martin@gmail.com", password: "123456" )
user_8 = User.create!( first_name: "Jack", last_name: "Mule", email:"jack@gmail.com", password: "123456" )
user_9 = User.create!( first_name: "Jane", last_name: "Smith", email:"jane@gmail.com", password: "123456" )

puts 'Creating Events'
# Event
event_1 = Event.create!( event_name: " Maximilians lovers ", description: " let's go to Maximilians ", user: user_1, restaurant_name: " Maximilians ", restaurant_address: "  Friedrichstraße 185-190, 10117 Berlin ", restaurant_price_range: 3, date: Time.parse("Mar 20 2020 12:19"), spots: 5 )
event_2 = Event.create!( event_name: " KFC lovers ", description: " let's go to KFC ",  user: user_2, restaurant_name: " KFC ", restaurant_address: " Badstraße 4, 13357 Berlin ", restaurant_price_range: 1, date: Time.parse("Apr 4 2020 13:19"), spots: 4 )
event_3 = Event.create!( event_name: " Ishin lovers ", description: " Who's in for Ishin " ,user: user_3, restaurant_name: " Ishin ", restaurant_address: " Charlottenstraße 16, 10117 Berlin ", restaurant_price_range: 1, date: Time.parse("Apr 5 2020 13:00"), spots: 4 )
event_4 = Event.create!( event_name: " Mix and match ", description: " let's Mix and Match " ,user: user_4, restaurant_name: " Mix and Match ", restaurant_address: " Markgrafenstraße 56, 10117 Berlin ", restaurant_price_range: 2, date: Time.parse("May 10 2020 14:00"), spots: 5 )
event_5 = Event.create!( event_name: " Yarok Here we go ", description: " Meet up at Yarok " ,user: user_5, restaurant_name: " Yorak ", restaurant_address: " Wilhelmstraße 41A, 10963 Berlin ", restaurant_price_range: 4, date: Time.parse("Apr 1 2020 13:00"), spots: 3 )
event_6 = Event.create!( event_name: " Johny's chip in ", description: " let's go to Jony's " ,user: user_6, restaurant_name: "  Johny's", restaurant_address: " Markgrafenstraße 56, 10117 Berlin ", restaurant_price_range: 2, date: Time.parse("Mar 20 2020 13:00"), spots: 3 )
event_7 = Event.create!( event_name: " Bocca di Bacco fans ", description: " Meet me at Bocca di Bacco " ,user: user_7, restaurant_name: " Bocca di Bacco ", restaurant_address: " Friedrichstraße 167-168, 10117 Berlin", restaurant_price_range: 2, date: Time.parse("Mar 21 2020 13:00"), spots: 5 )
event_8 = Event.create!( event_name: " QIU Restaurant lovers", description: " let's meet up at QIU - Bar & Restaurant " ,user: user_8, restaurant_name: " QIU - Bar & Restaurant", restaurant_address: " Potsdamer Straße 3, 10785 Berlin ", restaurant_price_range: 2, date:Time.parse("Apr 2 2020 12:30"), spots: 4 )


puts 'Creating Bookings'
# Booking
booking_1 = Booking.create!( user: user_1, event: event_4 )
booking_2 = Booking.create!( user: user_2, event: event_3 )
booking_3 = Booking.create!( user: user_3, event: event_2 )
booking_4 = Booking.create!( user: user_4, event: event_1 )
booking_5 = Booking.create!( user: user_5, event: event_5 )
booking_2 = Booking.create!( user: user_6, event: event_6 )
booking_1 = Booking.create!( user: user_9, event: event_8 )



puts "Finished"
puts "Now you have #{User.all.count} users, #{Event.all.count} events, and #{Booking.all.count} bookings"
