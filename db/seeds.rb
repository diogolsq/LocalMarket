# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Cleaning database"
OrdersToProduct.destroy_all
puts "Orders_to_product destroy"
Product.destroy_all
User.destroy_all
Review.destroy_all
Order.destroy_all


puts "Creating Users"

#sellers
milene = User.create!({ name: "Milene Cardoso", username: "milene", password: "1234567", cellphone: 123456787, address: "copacabana", seller: true, email: "milene@gmail.com"})

nicole = User.create!({ name: "Nicole Ochoa", username: "nicoleocla", password: "1234567", cellphone: 123456786, address: "quito", seller: true, email: "nicole@gmail.com"})

#users
matheus = User.create!({ name: "Matheus Penchel", username: "mcpenchel", password: "1234567", cellphone: 123456789, address: "copacabana", email: "matheus@gmail.com"})

isa = User.create!({ name: "Isabella Meyer", username: "imeyer", password: "1234567", cellphone: 123456788, address: "copacabana", email: "isa@gmail.com"})


puts "Creating products"

orange_juice = Product.create!({ name: "Orange Juice", description: "Organic Oranges from Ecuador", price: 1.20, stock: 10, user_id: nicole.id})
 file = open("https://images-na.ssl-images-amazon.com/images/I/71GacuNBtzL._SL1500_.jpg")
  orange_juice.photo.attach(io: file, filename: "orange.jpg")
milk = Product.create!({ name: "Lechera Milk", description: "Best Milk Ever", price: 1.40, stock: 0, user_id: nicole.id})
 file = open("https://images-na.ssl-images-amazon.com/images/I/51x9AXEIwtL._SL1000_.jpg")
  milk.photo.attach(io: file, filename: "milk.jpg")
butter = Product.create!({ name: "Butter", description: "Pure, batch churned the old fashioned way", price: 2.00, stock: 25, user_id: milene.id})
  file = open("https://images-na.ssl-images-amazon.com/images/I/91cfR4UC09L._SL1500_.jpg")
  butter.photo.attach(io: file, filename: "butter.jpg")
flour = Product.create!({ name: "Flour", description: "Glutten Free. Fortified with iron, calcium and vitamin b ", price: 2.20, stock: 3, user_id: milene.id})
 file = open("https://images-na.ssl-images-amazon.com/images/I/713Zeb3QJoL._AC_SL1500_.jpg")
  flour.photo.attach(io: file, filename: "flour.jpg")
coffee = Product.create!({ name: "Cofee Roasters", description: "Organic Blend. All natural and unfiltered", price: 5.20, stock: 3, user_id: milene.id})
 file = open("https://images-na.ssl-images-amazon.com/images/I/91NYMOFlO-L._SL1500_.jpg")
  coffee.photo.attach(io: file, filename: "coffee.jpg")
tea = Product.create!({ name: "Flor de Jamaica", description: "Herbal organic tea", price: 1.40, stock: 0, user_id: nicole.id})
 file = open("https://images-na.ssl-images-amazon.com/images/I/51x9AXEIwtL._SL1000_.jpg")
  tea.photo.attach(io: file, filename: "tea.jpg")



puts "Creating Reviews"

review1 = Review.create!({rating: 2, description: "", user_id: matheus.id, product_id: orange_juice.id})
review2 = Review.create!({rating: 5, description: "Great Juice!", user_id: isa.id, product_id: orange_juice.id})
review3 = Review.create!({rating: 5, description: "Best i've ever had", user_id: isa.id, product_id: coffee.id})
review4 = Review.create!({rating: 5, description: "", user_id: matheus.id, product_id: coffee.id})
review5 = Review.create!({rating: 3, description: "", user_id: matheus.id, product_id: orange_juice.id})
review6 = Review.create!({rating: 5, description: "Fantastic coffee! Will buy again", user_id: matheus.id, product_id: coffee.id})
review7 = Review.create!({rating: 4, description: "This is just what I was looking for at an amazing price. Love it!", user_id: matheus.id, product_id: coffee.id})



puts "finished!"

