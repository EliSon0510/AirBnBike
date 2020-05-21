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

 p user_1 = User.create!(email: "florence@carlier.com", password: "1234567")
 p user_2 = User.create!(email: "ellie@son.com", password: "louvain")
 p user_3 = User.create!(email: "guillaume@gmail.com", password: "wagon123")
 p user_4 = User.create!(email:"phaedon@gmail.com", password: "greece")

#  puts "Now deleting old bikes.."
#  puts ". . . . . d e l e t i n g . . . . . please wait . . . . . ."
#  Bike.destroy_all

 p bike_1 = Bike.new(
  category: 'e-bike',
  description: 'This bike has different modes, maximum speed of 25km/h',
  price:40,
  user: user_1,

  location: "Brussels"
  )

 file_1 = URI.open('https://cdn.shopify.com/s/files/1/1772/1703/t/14/assets/cowboy-bike.png?v=7156884286534268270')
 bike_1.photo.attach(io: file_1, filename: 'image.png', content_type: 'image/png')
 bike_1.save!

 p bike_2 = Bike.new(
  category: 'city bike',
  description: 'City bike in very good shape, women bike',
  price:20,
   user: user_3,
   location: "Brussels")

 file_2 = URI.open('https://www.becycled.be/files/05-2020/ad22005/gobee-city-bike-1971186036.jpeg')
 bike_2.photo.attach(io: file_2, filename: 'image.png', content_type: 'image/png')
 bike_2.save!

 p bike_3 = Bike.new(
  category: 'children bike',
  description: 'Fancy bike for brave and kind children',
  price:15,
   user: user_4,
   location: "Brussels")

 file_3 = URI.open('https://cdn.oogarden.net/Product/0102/0102-0068-Large.jpg')
 bike_3.photo.attach(io: file_3, filename: 'image.png', content_type: 'image/png')
 bike_3.save!


 p bike_4 = Bike.new(
  category: 'e-mountain bike',
  description: 'mainly used in the woods or in the mountains, for VTT lovers that are lazy ',
  price:45,
  user: user_1,
  location: "Brussels")

 file_4 = URI.open('https://assets.probikeshop.fr/images/products2/282/160961/600x600-160961_15530682457457.jpg')
 bike_4.photo.attach(io: file_4, filename: 'image.png', content_type: 'image/png')
 bike_4.save!


   p bike_5 = Bike.new(
    category: 'tandem bike',
    description: 'Rent this tandem bike if you want to laugh, have fun and lose kcal',
    price:20,
    user: user_2,
    location: "Brussels")

  file_5 = URI.open('https://i.ebayimg.com/images/g/70kAAOSwmTddL1lx/s-l300.jpg')
  bike_5.photo.attach(io: file_5, filename: 'image.png', content_type: 'image/png')
  bike_5.save!

   p bike_6 = Bike.new(
    category: 'racing bike',
    description: 'for bike lovers wanting to test a professional racing bike',
    price:50,
    user: user_3,
    location: "Brussels")

  file_6 = URI.open('https://i.ebayimg.com/images/g/99QAAOSwKtlWpMwa/s-l300.jpg')
  bike_6.photo.attach(io: file_6, filename: 'image.png', content_type: 'image/png')
  bike_6.save!


    p bike_7 = Bike.new(
      category: 'mountain bike',
      description: 'Adult mountain bike in really good shape',
      price:30,
      user: user_4,
      location: "Brussels")

  file_7 = URI.open('https://dfp2hfrf3mn0u.cloudfront.net/162/1626307_original_1.jpg')
  bike_7.photo.attach(io: file_7, filename: 'image.png', content_type: 'image/png')
  bike_7.save!

    p bike_8 = Bike.new(
      category: 'city bike',
      description: 'Think about our planet, use a nice city bike to travel in your city!',
      price:20,
      user: user_1,
      location: "Brussels")

  file_8 = URI.open('https://i.ebayimg.com/00/s/NzUwWDEwMDA=/z/9PIAAOSwcBpd250z/$_84.JPG')
  bike_8.photo.attach(io: file_8, filename: 'image.png', content_type: 'image/png')
  bike_8.save!

# puts "Finished! Enjoy your new bikes!"
