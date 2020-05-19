# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  User.destroy_all
 p user_1 = User.create!(email: "florence@carlier.com", password: "1234567")
 p user_2 = User.create!(email: "ellie@son.com", password: "louvain")
 p user_3 = User.create!(email: "guillaume@gmail.com", password: "wagon123")
 p user_4 = User.create!(email:"phaedon@gmail.com", password: "greece")

 Bike.destroy_all
 p Bike.create!(category: 'e-bike', description: 'you can go really fast', price:40, user_id: user_1)
 p Bike.create!(category: 'mountain bike', description: 'used in the mountains not in a city', price:30, user_id: user_2)
 p Bike.create!(category: 'city bike', description: 'for the city', price:20, user_id: user_3)
 p Bike.create!(category: 'children bike', description: 'for children', price:15, user_id: user_4)
 p Bike.create!(category: 'e-mountain bike', description: 'used in the mountains, goes faster than any other bikes', price:45, user_id: user_1)
 p Bike.create!(category: 'tandem bike', description: 'for ellie', price:20, user_id: user_2)
 p Bike.create!(category: 'racing bike', description: 'if you want to do a race', price:50, user_id: user_3)
 p Bike.create!(category: 'mountain bike', description: 'used in the mountains not in a city', price:30, user_id: user_4)
 p Bike.create!(category: 'city bike', description: 'for the city', price:20, user_id: user_1)


