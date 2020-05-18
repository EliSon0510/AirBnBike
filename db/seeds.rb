# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# bike = Bike.create([{category: 'e-bike'}, {description: 'you can go really fast'}, {price:40}])
# bike = Bike.create([{category: 'mountain bike'}, {description: 'used in the mountains not in a city'}, {price:30}])
# bike = Bike.create([{category: 'city bike'}, {description: 'for the city'}, {price:20}])
bikes = [
 {
 category: "e-bike",
 description: "you can go really fast",
 price: 40
},
{
 category: "mountain bike",
 description: "used in the mountains",
 price: 30
},
{
 category: "city bike",
 description: "used in the cities",
 price: 20
 }
]


bikes.each {|params| Bike.create!(params)}
