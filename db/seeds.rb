# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Cleaning database"
Product.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating Users"

#sellers
milene = User.create!({ name: "Milene Cardoso", username: "milene", password: "1234567", cellphone: 123456787, address: "copacabana", seller: true, email: "milene@gmail.com"})
file = open("https://harald.com.br/wp-content/uploads/2018/04/Pao-de-mel-fofinho_700x520.jpg")
milene.photo.attach(io: file, filename: "milene.jpg")
nicole = User.create!({ name: "Nicole Ochoa", username: "nicoleocla", password: "1234567", cellphone: 123456786, address: "quito", seller: true, email: "nicole@gmail.com"})

#users
matheus = User.create!({ name: "Matheus Penchel", username: "mcpenchel", password: "1234567", cellphone: 123456789, address: "copacabana", email: "matheus@gmail.com"})
isa = User.create!({ name: "Isabella Meyer", username: "imeyer", password: "1234567", cellphone: 123456788, address: "copacabana", email: "isa@gmail.com"})


puts "Creating products"

orange_juice = Product.create!({ name: "Orange Juice", description: "Organic Oranges from Ecuador", price: 1.20, stock: 10, user_id: nicole.id})
 file = open("https://images-na.ssl-images-amazon.com/images/I/81ax5sbmlSL._SL1500_.jpg")
  pao_de_mel.photo.attach(io: file, filename: "orange.jpg")
milk = Product.create!({ name: "Lechera Milk", description: "Best Milk Ever", price: 1.40, stock: 0, user_id: nicole.id})
 file = open("https://guadaproducts.com/426-large_default/la-lechera-leche-entera-1lt.jpg")
  pao_de_mel.photo.attach(io: file, filename: "milk.jpg")
pao_de_mel = Product.create!({ name: "Pao de Mel", description: "The best Pao de Mel from Leo's girlfriend", price: 2.00, stock: 25, user_id: milene.id})
  file = open("https://harald.com.br/wp-content/uploads/2018/04/Pao-de-mel-fofinho_700x520.jpg")
  pao_de_mel.photo.attach(io: file, filename: "pao.jpg")
home_made_cookies = Product.create!({ name: "Home Made Cookies", description: "Gluten Free and Delicous", price: 2.20, stock: 3, user_id: milene.id})
 file = open("https://images-gmi-pmc.edge-generalmills.com/087d17eb-500e-4b26-abd1-4f9ffa96a2c6.jpg")
  pao_de_mel.photo.attach(io: file, filename: "cookies.jpg")


puts "Creating Reviews"

review1 = Review.create!({rating: 2, description: "", user_id: matheus.id, product_id: orange_juice.id})
review2 = Review.create!({rating: 5, description: "Great Juice!", user_id: isa.id, product_id: orange_juice.id})
review3 = Review.create!({rating: 5, description: "Best i've ever had", user_id: isa.id, product_id: pao_de_mel.id})
review4 = Review.create!({rating: 5, description: "", user_id: matheus.id, product_id: pao_de_mel.id})
review5 = Review.create!({rating: 3, description: "", user_id: matheus.id, product_id: orange_juice.id})



puts "finished!"

