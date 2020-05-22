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

 file_1 = URI.open('https://s3.envato.com/files/278508975/bike_0001.png')
 bike_1.photo.attach(io: file_1, filename: 'image.png', content_type: 'image/png')
 bike_1.save!

 p bike_2 = Bike.new(
  category: 'city bike',
  description: 'City bike in very good shape, for groceries too!',
  price:20,
   user: user_3,
   location: "Spain")

 file_2 = URI.open('https://p0.piqsels.com/preview/84/640/981/red-and-black-step-through-bike-thumbnail.jpg')
 bike_2.photo.attach(io: file_2, filename: 'image.png', content_type: 'image/jpg')
 bike_2.save!

 p bike_3 = Bike.new(
  category: 'children bike',
  description: 'Fancy bike for brave and kind children',
  price:15,
   user: user_4,
   location: "Greece")

 file_3 = URI.open('https://cdn.oogarden.net/Product/0102/0102-0068-Large.jpg')
 bike_3.photo.attach(io: file_3, filename: 'image.png', content_type: 'image/jpg')
 bike_3.save!


 p bike_4 = Bike.new(
  category: 'e-mountain bike',
  description: 'mainly used in the woods or in the mountains, for VTT lovers that are lazy ',
  price:45,
  user: user_1,
  location: "Germany")

 file_4 = URI.open('https://assets.probikeshop.fr/images/products2/282/160961/600x600-160961_15530682457457.jpg')
 bike_4.photo.attach(io: file_4, filename: 'image.png', content_type: 'image/jpg')
 bike_4.save!


   p bike_5 = Bike.new(
    category: 'tandem bike',
    description: 'Rent this tandem bike if you want to laugh, have fun and lose kcal',
    price:20,
    user: user_2,
    location: "Sweden")

  file_5 = URI.open('https://i.ebayimg.com/images/g/70kAAOSwmTddL1lx/s-l300.jpg')
  bike_5.photo.attach(io: file_5, filename: 'image.png', content_type: 'image/jpg')
  bike_5.save!

   p bike_6 = Bike.new(
    category: 'racing bike',
    description: 'This is for bike lovers wanting to test a professional racing bike',
    price:50,
    user: user_3,
    location: "London")

  file_6 = URI.open('https://i.ebayimg.com/images/g/99QAAOSwKtlWpMwa/s-l300.jpg')
  bike_6.photo.attach(io: file_6, filename: 'image.png', content_type: 'image/jpg')
  bike_6.save!


    p bike_7 = Bike.new(
      category: 'mountain bike',
      description: 'Adult mountain bike in really good shape',
      price:30,
      user: user_4,
      location: "Italy")

  file_7 = URI.open('https://dfp2hfrf3mn0u.cloudfront.net/162/1626307_original_1.jpg')
  bike_7.photo.attach(io: file_7, filename: 'image.png', content_type: 'image/jpg')
  bike_7.save!

    p bike_8 = Bike.new(
      category: 'city bike',
      description: 'Think about our planet, use a nice city bike to travel in your city!',
      price:20,
      user: user_1,
      location: "Estonia")

  file_8 = URI.open('https://s3-ap-southeast-2.amazonaws.com/graphics.iamfree.com/photos/a648df13-7ec2-47fa-a3d8-128cf19651c7/display/i-am-free-city-bicycle.jpg')
  bike_8.photo.attach(io: file_8, filename: 'image.png', content_type: 'image/jpg')
  bike_8.save!

  p bike_9 = Bike.new(
  category: 'racing bike',
  description: 'Racing bike, to workout your cardio',
  price:30,
   user: user_3,
   location: "Le mans,France")

 file_9 = URI.open('https://i.ebayimg.com/images/g/99QAAOSwKtlWpMwa/s-l300.jpg')
 bike_9.photo.attach(io: file_9, filename: 'image.png', content_type: 'image/jpg')
 bike_9.save!

 p bike_10 = Bike.new(
  category: 'mountain bike',
  description: 'Are you ready for a nice bike packing? Then, this bike is for you!',
  price:30,
   user: user_1,
   location: "Geneva")

 file_10 = URI.open('https://miro.medium.com/max/1400/1*LEexgp77Nph6PDWZAh2vnA.jpeg')
 bike_10.photo.attach(io: file_10, filename: 'image.png', content_type: 'image/jpeg')
 bike_10.save!

 p bike_11 = Bike.new(
  category: 'city bike',
  description: 'City bike in very good shape, women bike',
  price:20,
   user: user_2,
   location: "Paris")

 file_11 = URI.open('https://tabithadumas.com/wp-content/uploads/2020/05/photo-1562129340-c8edaf803bc1.jpg')
 bike_11.photo.attach(io: file_11, filename: 'image.png', content_type: 'image/jpg')
 bike_11.save!

 p bike_12 = Bike.new(
  category: 'e-bike',
  description: 'Electric Bike == Eco Spirit!',
  price:35,
   user: user_1,
   location: "Vilnius, Lithuania")

 file_12 = URI.open('https://s3.envato.com/files/278508975/bike_0001.png')
 bike_12.photo.attach(io: file_12, filename: 'image.png', content_type: 'image/png')
 bike_12.save!

 p bike_13 = Bike.new(
  category: 'mountain bike',
  description: 'Bike for mountain lovers! Begin your training with this bike now!',
  price:25,
   user: user_4,
   location: "Riga, Latvia")

 file_13 = URI.open('http://www.walkandbikeforlife.com/wp-content/uploads/2019/08/clayton-cardinalli-MJrtAqUemUQ-unsplash-683x1024.jpg')
 bike_13.photo.attach(io: file_13, filename: 'image.png', content_type: 'image/jpg')
 bike_13.save!

 p bike_14 = Bike.new(
  category: 'city bike',
  description: 'City bike for nice rides into the nature too!',
  price:30,
   user: user_4,
   location: "Frankfurt")

 file_14 = URI.open('https://bin.snmmd.nl/m/67r7c4t2hcov_1200x600.jpg/mat-reding-snowrxemmay-unsplash.jpg')
 bike_14.photo.attach(io: file_14, filename: 'image.png', content_type: 'image/jpg')
 bike_14.save!

 p bike_15 = Bike.new(
  category: 'children bike',
  description: 'Bike for our little friends!',
  price:20,
   user: user_2,
   location: "Athens")

 file_15 = URI.open('http://sf.co.ua/16/04/wallpaper-3c09.jpg')
 bike_15.photo.attach(io: file_15, filename: 'image.png', content_type: 'image/jpg')
 bike_15.save!

 p bike_16 = Bike.new(
  category: 'children bike',
  description: 'The best bike for the safety of our little friend!',
  price:25,
   user: user_3,
   location: "France")

 file_16 = URI.open('https://cdn.oogarden.net/Product/0102/0102-0068-Large.jpg')
 bike_16.photo.attach(io: file_16, filename: 'image.png', content_type: 'image/jpg')
 bike_16.save!

p bike_17 = Bike.new(
  category: 'tandem bike',
  description: 'The best bike for you and your partner! Choose this for a nice and smooth ride..',
  price:40,
   user: user_1,
   location: "France")

 file_17 = URI.open('https://i.ebayimg.com/images/g/70kAAOSwmTddL1lx/s-l300.jpg')
 bike_17.photo.attach(io: file_17, filename: 'image.png', content_type: 'image/jpg')
 bike_17.save!

