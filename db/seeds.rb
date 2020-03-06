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
user_6 = User.create!( first_name: "Emma", last_name: "Cole", email:"ebony@gmail.com", password: "123456" )
user_7 = User.create!( first_name: "Reyrey", last_name: "King", email:"riri@gmail.com", password: "123456" )
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
event_1 = Event.create!( user: user_13, event_name: "Pasta time!", description: "My office is a block away from Vapiano. And I love pasta. Do you? 🍝",  restaurant_name: "Vapiano", restaurant_address: "Friedrichstraße 50-55, 10117 Berlin", restaurant_price_range: 2, start_time: DateTime.parse("06/03/2020 12:00"), end_time: DateTime.parse("06/03/2020 13:00") , spots: 4 )
event_2 = Event.create!( user: user_12, event_name: "KFC lovers", description: "I love fried chickens! Finger LIckin' Good👅",   restaurant_name: "KFC", restaurant_address: "Friedrichstraße 45, 10969 Berlin", restaurant_price_range: 1, start_time: DateTime.parse("06/03/2020 12:00"), end_time: DateTime.parse("06/03/2020 13:00"), spots: 4 )
event_3 = Event.create!( user: user_9, event_name: "Ishin lovers🍣", description: "Their service is kind of rude but maybe because I was alone...Would you join me?" , restaurant_name: " Ishin ", restaurant_address: " Charlottenstraße 16, 10117 Berlin ", restaurant_price_range: 1, start_time: DateTime.parse("06/03/2020 13:00"), end_time: DateTime.parse("06/03/2020 13:30"), spots: 4 )
event_4 = Event.create!( user: user_19, event_name: "Syrian sandwich", description: "Hi, I'm new in Berlin and looking for friends. This Syrian place is pretty authentic. Please join me if you are interested. Thanks." , restaurant_name: " Yorak ", restaurant_address: " Wilhelmstraße 41A, 10963 Berlin ", restaurant_price_range: 1, start_time: DateTime.parse("06/03/2020 14:00"), end_time: DateTime.parse("06/03/2020 14:45"), spots: 5 )
event_5 = Event.create!( user: user_5, event_name: "Spicy noodles🍜", description: "I love spicy soup noodles!" , restaurant_name: "Liu Noodles House ", restaurant_address: "Kronenstraße 72, 10117 Berlin", restaurant_price_range: 2, start_time: DateTime.parse("06/03/2020 14:00"), end_time: DateTime.parse("06/03/2020 15:00"), spots: 5 )
event_6 = Event.create!( user: user_7, event_name: "Johny's chip in", description: "let's go to Jony's" , restaurant_name: "  Johny's", restaurant_address: " Markgrafenstraße 56, 10117 Berlin ", restaurant_price_range: 2, start_time: DateTime.parse("06/03/2020 14:00"), end_time: DateTime.parse("06/03/2020 15:30"), spots: 3 )
event_7 = Event.create!( user: user_6, event_name: "Bocca di Bacco fans", description: "Meet me at Bocca di Bacco" , restaurant_name: " Bocca di Bacco ", restaurant_address: " Friedrichstraße 167-168, 10117 Berlin", restaurant_price_range: 2, start_time: DateTime.parse("06/03/2020 15:00"), end_time: DateTime.parse("06/03/2020 15:45"), spots: 5 )
event_8 = Event.create!( user: user_2, event_name: "QIU Restaurant lovers", description: "let's meet up at QIU - Bar & Restaurant" , restaurant_name: " QIU - Bar & Restaurant", restaurant_address: " Potsdamer Straße 3, 10785 Berlin ", restaurant_price_range: 2, start_time: DateTime.parse("06/03/2020 15:00"), end_time: DateTime.parse("06/03/2020 16:00"), spots: 4 )
event_9 = Event.create!( user: user_11, event_name: "Salad and chat", description: "I have an hour for lunch break, would be nice if someone can join me :-)" , restaurant_name: "Little Green Rabbit", restaurant_address: "Friedrichstraße 200, 10117 Berlin", restaurant_price_range: 2, start_time: DateTime.parse("06/03/2020 15:00"), end_time: DateTime.parse("06/03/2020 16:30"), spots: 4 )
event_10 = Event.create!( user: user_20, event_name: "Maximilians lovers", description: "It's very touristy and fun. Beers are amazing!",  restaurant_name: " Maximilians ", restaurant_address: "  Friedrichstraße 185-190, 10117 Berlin ", restaurant_price_range: 3, start_time: DateTime.parse("06/03/2020 16:00"), end_time: DateTime.parse("06/03/2020 17:00"), spots: 5 )
event_11 = Event.create!( user: user_8, event_name: "Exchange student from India 🍛", description: "Hi my name is Raja. I'm an exchange student from India and new in Berlin. I usually come here to have lunch during the lunch time. I can help translating the menu! :)",  restaurant_name: " Delhi 6 ", restaurant_address: "Friedrichstraße 237, 10969 Berlin", restaurant_price_range: 1, start_time: DateTime.parse("06/03/2020 17:00"), end_time: DateTime.parse("06/03/2020 17:30"), spots: 5 )
event_12 = Event.create!( user: user_14, event_name: "Business lunch💼", description: "On a business trip in Berlin. Join me if you are interested to have a quick lunch",  restaurant_name: "SOLAR Bar Restaurant Lounge", restaurant_address: "Stresemannstraße 76, 10963 Berlin", restaurant_price_range: 5, start_time: DateTime.parse("06/03/2020 16:00"), end_time: DateTime.parse("06/03/2020 17:00"), spots: 2 )
event_13 = Event.create!( user: user_16, event_name: "I'm lovin🍟 ", description: "I love McNuggets. No judgement!" , restaurant_name: "McDonald's", restaurant_address: "Friedrichstraße 207, 10969 Berlin", restaurant_price_range: 2, start_time: DateTime.parse("06/03/2020 14:00"), end_time: DateTime.parse("06/03/2020 15:00"), spots: 3 )

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

event_1.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583406406/Restaurant%20Picutres/Vapiano/hcmp131298_447734_l1x2pc.jpg"), filename: 'restaurantpic2.jpg', content_type: 'image/jpg')
event_1.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583406362/Restaurant%20Picutres/Vapiano/vapianocentre_oj8mw9.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_1.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583406325/Restaurant%20Picutres/Vapiano/cover_image.jpg.640x360_q85_crop_hnezfx.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_2.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504470/Restaurant%20Picutres/_107847262_gettyimages-1152276563-594x594_o1se3p.jpg"), filename: 'kfc.jpg', content_type: 'image/jpg')
event_2.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504471/Restaurant%20Picutres/5d0aa51197ad7643080a8af3_yfw2rt.jpg"), filename: 'kfc2.jpg', content_type: 'image/jpg')
event_3.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504663/Restaurant%20Picutres/220px-Sushi_platter_er6ni9.jpg"), filename: 'sushi.jpg', content_type: 'image/jpg')
event_3.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504668/Restaurant%20Picutres/kimbap-korean-sushi-rolls-2118795-Hero-5b7dbdd346e0fb00250718b8_gzzfmp.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_4.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504658/Restaurant%20Picutres/screen-shot-2019-08-29-at-2.05.53-pm-816x588_d1y48v.png"), filename: 'syrian.jpg', content_type: 'image/jpg')
event_4.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504654/Restaurant%20Picutres/c3ec81dde642f5b7ac070c97a83d0225_zvlqbg.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_5.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504694/Restaurant%20Picutres/Liu-Berlin-_E6_88_90_E9_83_BD_E5_91_B3_E9_81_93-Chengdu-Noodles-Exterior-1024x683_ujrfwc.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_5.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504686/Restaurant%20Picutres/photo1jpg_uvm9tb.jpg"), filename: 'noodle.jpg', content_type: 'image/jpg')
event_6.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504832/Restaurant%20Picutres/traditional-german-food-pork-knuckles-currywurst_oz4wzu.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')
event_6.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504840/Restaurant%20Picutres/Schnitzel_qfryve_b8ob2u.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_7.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504928/Restaurant%20Picutres/Bocca_di_bacco_2-fettuccine_a_la_bolognese_bvuclv.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')
event_7.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504939/Restaurant%20Picutres/6a5349_0c5747c8de9148c685b26901bb84a0c0_mv2_d_4032_3024_s_4_2_ky6fwq.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_8.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504961/Restaurant%20Picutres/110b106c7c5af9b694f6c8f45775bdd7_zftixg.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')
event_8.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583504982/Restaurant%20Picutres/jin-qiu-129-vista-sala-055a8_kgbhdl.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_9.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505010/Restaurant%20Picutres/mozzarella-avocado-salad_tutjff.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')
event_9.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505039/Restaurant%20Picutres/Little-Green-Rabbit-Couscous-Salat-1_rp2qoa.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_10.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505085/Restaurant%20Picutres/Food-from-Germany_v5bcs8.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')
event_10.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505128/Restaurant%20Picutres/gn-gift_guide_variable_c_ea3iwx.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_11.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505246/Restaurant%20Picutres/the-best-top-10-indian-dishes-865x647-731x547_biwlan.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')
event_11.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505270/Restaurant%20Picutres/p07cj8zj_ky7krg.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_12.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505386/Restaurant%20Picutres/business-lunch_rgyuar.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')
event_12.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505572/Restaurant%20Picutres/easy-lunches-for-stressed-out-people-400_wozstt.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')
event_13.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505444/Restaurant%20Picutres/shutterstock_243788887-1024x1024_glvmr9.jpg"), filename: 'rp1.jpg', content_type: 'image/jpg')
event_13.photos.attach(io: URI.open("https://res.cloudinary.com/lunchmates/image/upload/v1583505475/Restaurant%20Picutres/McDonald_27s_2C_6875_Sand_Lake_Rd_2C_Orlando_interior_2_xtursd.jpg"), filename: 'rp3.jpg', content_type: 'image/jpg')




puts 'Creating Bookings'
# Booking
booking_1 = Booking.create!( event: event_1, user: user_16 ) #pasta
booking_2 = Booking.create!( event: event_1, user: user_6 )

booking_4 = Booking.create!( event: event_2, user: user_4 ) #KFC

booking_5 = Booking.create!( event: event_3, user: user_1 ) #ishin
booking_6 = Booking.create!( event: event_3, user: user_2 )
booking_7 = Booking.create!( event: event_3, user: user_3 )

booking_3 = Booking.create!( event: event_4, user: user_20 )
booking_8 = Booking.create!( event: event_4, user: user_19 )#syrian
booking_9 = Booking.create!( event: event_4, user: user_9 )

booking_10 = Booking.create!( event: event_5, user: user_1 )#noodle
booking_11 = Booking.create!( event: event_5, user: user_9 )
# booking_12 = Booking.create!( event: event_5, user: user_9 )

booking_13 = Booking.create!( event: event_6, user: user_10 )#jonny
booking_14 = Booking.create!( event: event_6, user: user_19 )

booking_15 = Booking.create!( event: event_7, user: user_19 )#bocca
booking_16 = Booking.create!( event: event_7, user: user_9 )

booking_17 = Booking.create!( event: event_8, user: user_17 )#qiu
booking_18 = Booking.create!( event: event_8, user: user_19 )

booking_19 = Booking.create!( event: event_9, user: user_7 )#salad
booking_20 = Booking.create!( event: event_9, user: user_9 )

booking_21 = Booking.create!( event: event_10, user: user_18 )#maxi
booking_22 = Booking.create!( event: event_10, user: user_2 )

booking_23 = Booking.create!( event: event_11, user: user_20 )#india
booking_24 = Booking.create!( event: event_11, user: user_11 )

booking_25 = Booking.create!( event: event_12, user: user_9 )#busine
# booking_26 = Booking.create!( event: event_12, user: user_9 )

booking_27 = Booking.create!( event: event_13, user: user_9 )#mcd
# booking_28 = Booking.create!( event: event_13, user: user_9 )



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
puts "Now you have #{User.all.count} users, #{Event.all.count} events, and #{Booking.all.count} bookings"
