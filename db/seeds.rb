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
user_5 = User.create!( first_name: "Caro", last_name: "Jen", email:"caro@gmail.com", password: "123456" )
user_6 = User.create!( first_name: "Ebony", last_name: "Cole", email:"ebony@gmail.com", password: "123456" )
user_7 = User.create!( first_name: "Riri", last_name: "King", email:"riri@gmail.com", password: "123456" )
user_8 = User.create!( first_name: "Raja", last_name: "Kash", email:"raja@gmail.com", password: "123456" )
user_9 = User.create!( first_name: "Tako", last_name: "Hiroki", email:"tako@gmail.com", password: "123456" )
user_10 = User.create!( first_name: "Sam", last_name: "Smith", email:"sam@gmail.com", password: "123456" )
user_11 = User.create!( first_name: "Katy", last_name: "Perry", email:"katy@gmail.com", password: "123456" )
user_12 = User.create!( first_name: "Ronald", last_name: "Donald", email:"ronald@gmail.com", password: "123456" )
user_13 = User.create!( first_name: "Eva", last_name: "Vida", email:"eva@gmail.com", password: "123456" )
user_14 = User.create!( first_name: "Kenny", last_name: "Manny", email:"kenny@gmail.com", password: "123456" )
user_15 = User.create!( first_name: "Rahim", last_name: "Mat", email:"rahim@gmail.com", password: "123456" )
user_16 = User.create!( first_name: "Fernado", last_name: "Cruz", email:"fernado@gmail.com", password: "123456" )
user_17 = User.create!( first_name: "Maria", last_name: "Rose", email:"maria@gmail.com", password: "123456" )
user_18 = User.create!( first_name: "Fatimah", last_name: "Hazmah", email:"fatimah@gmail.com", password: "123456" )
user_19 = User.create!( first_name: "Rosmah", last_name: "Ali", email:"rosmah@gmail.com", password: "123456" )
user_20 = User.create!( first_name: "Juan", last_name: "Carlos", email:"juan@gmail.com", password: "123456" )



puts 'Creating Events'
# Event
event_1 = Event.create!( event_name: "Pasta time!", description: "My office is a block away from Vapiano. And I love pasta. Do you? 🍝" ,user: user_11, restaurant_name: "Vapiano", restaurant_address: "Friedrichstraße 50-55, 10117 Berlin", restaurant_price_range: 2, date:Time.parse("Mar 6 2020 18:30"), spots: 4 )
event_2 = Event.create!( event_name: "KFC lovers", description: "I love fried chickens! Finger LIckin' Good👅",  user: user_12, restaurant_name: "KFC", restaurant_address: "Friedrichstraße 45, 10969 Berlin", restaurant_price_range: 1, date: Time.parse("Mar 6 2020 18:19"), spots: 4 )
event_3 = Event.create!( event_name: "Ishin lovers🍣", description: "Their service is kind of rude but maybe because I was alone...Would you join me?" ,user: user_3, restaurant_name: " Ishin ", restaurant_address: " Charlottenstraße 16, 10117 Berlin ", restaurant_price_range: 1, date: Time.parse("Mar 6 2020 19:00"), spots: 4 )
event_4 = Event.create!( event_name: "Syrian sandwich", description: "Hi, I'm new in Berlin and looking for friends. This Syrian place is pretty authentic. Please join me if you are interested. Thanks." ,user: user_19, restaurant_name: " Yorak ", restaurant_address: " Wilhelmstraße 41A, 10963 Berlin ", restaurant_price_range: 1, date: Time.parse("Mar 6 2020 17:30"), spots: 3 )
event_5 = Event.create!( event_name: "Spicy noodles🍜", description: "I love spicy soup noodles!" ,user: user_5, restaurant_name: "Liu Noodles House ", restaurant_address: "Kronenstraße 72, 10117 Berlin", restaurant_price_range: 2, date: Time.parse("Mar 6 2020 13:00"), spots: 5 )
event_6 = Event.create!( event_name: "Johny's chip in", description: "let's go to Jony's" ,user: user_8, restaurant_name: "  Johny's", restaurant_address: " Markgrafenstraße 56, 10117 Berlin ", restaurant_price_range: 2, date: Time.parse("Mar 6 2020 18:00"), spots: 3 )
event_7 = Event.create!( event_name: "Bocca di Bacco fans", description: "Meet me at Bocca di Bacco" ,user: user_9, restaurant_name: " Bocca di Bacco ", restaurant_address: " Friedrichstraße 167-168, 10117 Berlin", restaurant_price_range: 2, date: Time.parse("Mar 6 2020 18:15"), spots: 5 )
event_8 = Event.create!( event_name: "QIU Restaurant lovers", description: "let's meet up at QIU - Bar & Restaurant" ,user: user_10, restaurant_name: " QIU - Bar & Restaurant", restaurant_address: " Potsdamer Straße 3, 10785 Berlin ", restaurant_price_range: 2, date:Time.parse("Mar 6 2020 20:30"), spots: 4 )
event_9 = Event.create!( event_name: "Salad and chat", description: "I have an hour for lunch break, would be nice if someone can join me :-)" ,user: user_11, restaurant_name: "Little Green Rabbit", restaurant_address: "Friedrichstraße 200, 10117 Berlin", restaurant_price_range: 2, date:Time.parse("Mar 6 2020 12:30"), spots: 4 )
event_10 = Event.create!( event_name: "Maximilians lovers", description: "It's very touristy and fun. Beers are amazing!", user: user_1, restaurant_name: " Maximilians ", restaurant_address: "  Friedrichstraße 185-190, 10117 Berlin ", restaurant_price_range: 3, date: Time.parse("Mar 6 2020 17:19"), spots: 5 )
event_11 = Event.create!( event_name: "Exchange student from India 🍛", description: "Hi my name is Raja. I'm an exchange student from India and new in Berlin. I usually come here to have lunch during the lunch time. I can help translating the menu! :)", user: user_8, restaurant_name: " Delhi 6 ", restaurant_address: "Friedrichstraße 237, 10969 Berlin", restaurant_price_range: 1, date: Time.parse("Mar 6 2020 12:30"), spots: 5 )
event_12 = Event.create!( event_name: "Business lunch💼", description: "On a business trip in Berlin. Join me if you are interested to have a quick lunch", user: user_8, restaurant_name: "SOLAR Bar Restaurant Lounge", restaurant_address: "Stresemannstraße 76, 10963 Berlin", restaurant_price_range: 5, date: Time.parse("Mar 6 2020 12:30"), spots: 5 )
event_13 = Event.create!( event_name: "I'm lovin🍟 ", description: "I love McNuggets. No judgement!" ,user: user_8, restaurant_name: "McDonald's", restaurant_address: "Friedrichstraße 207, 10969 Berlin", restaurant_price_range: 2, date: Time.parse("Mar 6 2020 18:00"), spots: 3 )

events = [event_1, event_2, event_3, event_4, event_5, event_6, event_7, event_8, event_9, event_10, event_11, event_12, event_13]
images_events = [
  "https://res.cloudinary.com/lunchmates/image/upload/v1583406312/Restaurant%20Picutres/Vapiano/vapiano-offers-a-range_gokd2a.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583418961/Restaurant%20Picutres/146209_11091547015da58a065c028_big_dcjx5x.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583419110/Restaurant%20Picutres/innen_rh13pg.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583419149/Restaurant%20Picutres/o_bw2bn8.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583419477/Restaurant%20Picutres/101637_zUV_eOPZrg1c-4vF2c9G-wY9F20yFODvDddd8gvV4_A_qdhgj0.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583419603/Restaurant%20Picutres/restaurant-chocolat_nawcnn.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583419708/Restaurant%20Picutres/image-asset_ukcayj.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583419739/Restaurant%20Picutres/qiu-bar-restaurant_wgmnu4.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583406226/Restaurant%20Picutres/Little%20Green%20Rabbit/unsere-location-in-der_uy2boz.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583329808/Restaurant%20Picutres/img1_qz7dnf.png",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583419839/Restaurant%20Picutres/delhi6-gimg-10_buxtwc.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583419980/Restaurant%20Picutres/huge_brkqcr.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583419503/Restaurant%20Picutres/NINTCHDBPICT000486990216-1_grdhli.jpg"
]
images_events.each_with_index do |image, index|
  file = URI.open(image)
  events[index].photos.attach(io: file, filename: 'restaurantpic.jpg', content_type: 'image/jpg')
end


puts 'Creating Bookings'
# Booking
booking_1 = Booking.create!( user: user_1, event: event_4 )
booking_2 = Booking.create!( user: user_2, event: event_3 )
booking_3 = Booking.create!( user: user_3, event: event_2 )
booking_4 = Booking.create!( user: user_4, event: event_1 )
booking_5 = Booking.create!( user: user_5, event: event_5 )
booking_2 = Booking.create!( user: user_6, event: event_6 )
booking_1 = Booking.create!( user: user_9, event: event_8 )

users = [user_1, user_2, user_3, user_4, user_5, user_6, user_7, user_8, user_9, user_10, user_11, user_12, user_13, user_14, user_15, user_16, user_17, user_18, user_19, user_20]

images_user = [
  "https://res.cloudinary.com/lunchmates/image/upload/v1583406854/User%20Pictures/profilepic-A_lowotm.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583406856/User%20Pictures/profilepic-MA_orlqpq.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583406855/User%20Pictures/profilepic-M_d1u7pk.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583406857/User%20Pictures/profilepic-MAS_rowu6r.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583406676/User%20Pictures/profilepic-C_xenhmc.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407832/User%20Pictures/profilepic-1_hfz2zl.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407832/User%20Pictures/profilepic-2_ssuxmq.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407832/User%20Pictures/profilepic-3_wnhccp.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407834/User%20Pictures/profilepic-4_rkktch.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407835/User%20Pictures/profilepic-5_buodry.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407836/User%20Pictures/profilepic-6_a8xrae.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407837/User%20Pictures/profilepic-7_yeqdgo.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407838/User%20Pictures/profilepic-8_lnes4o.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407839/User%20Pictures/profilepic-9_ksmtdf.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407840/User%20Pictures/profilepic-10_zf4ilp.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583407841/User%20Pictures/profilepic-11_leu3co.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583408242/User%20Pictures/profilepic-12_ysl3xp.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583408243/User%20Pictures/profilepic-13_z7faic.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583408244/User%20Pictures/profilepic-14_edcxc6.jpg",
  "https://res.cloudinary.com/lunchmates/image/upload/v1583408245/User%20Pictures/profilepic-15_una5hf.jpg"
]
images_user.each_with_index do |image, index|
  file = URI.open(image)
  users[index].photo.attach(io: file, filename: 'profile_pic.jpg', content_type: 'image/jpg')
end



puts "Finished"
puts "Now you have #{User.all.count} users, #{Event.all.count} events, and #{Booking.all.count} bokings"
