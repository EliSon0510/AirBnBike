# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#require 'open-uri'

puts "Deleting users..."
User.destroy_all # if Rails.env.development?

puts "Feeding the database.. please wait.."

 user_1 = User.create!(email: "florence@carlier.com", password: "1234567")
 user_2 = User.create!(email: "ellie@son.com", password: "louvain")
 user_3 = User.create!(email: "guillaume@gmail.com", password: "wagon123")
 user_4 = User.create!(email:"phaedon@gmail.com", password: "greece")

 puts "Now deleting old bikes.."
 puts ". . . . . d e l e t i n g . . . . . please wait . . . . . ."
 Bike.destroy_all

 p bike_1 = Bike.new(
  category: 'e-bike',
  description: 'you can go really fast',
  price:40,
  user: user_1
  )

 # file_1 = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
 # bike_1.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
 # bike_1.save!



   p bike_2 = Bike.create!(
    category: 'city bike',
    description: 'for the city',
    price:20,
    user: user_3)

   p Bike.create!(
    category: 'children bike',
    description: 'for children',
    price:15,
    user: user_4)

   p Bike.create!(
    category: 'e-mountain bike',
    description: 'used in the mountains, goes faster than any other bikes',
    price:45,
    user: user_1)

   p Bike.create!(
    category: 'tandem bike',
    description: 'for ellie',
    price:20,
    user: user_2)

   p Bike.create!(
    category: 'racing bike',
    description: 'if you want to do a race',
    price:50,
    user: user_3)

    p Bike.create!(
      category: 'mountain bike',
      description: 'used in the mountains not in a city',
      price:30,
      user: user_4)

    p Bike.create!(
      category: 'city bike',
      description: 'for the city',
      price:20,
      user: user_1)

puts "Finished! Enjoy your new bikes!"
