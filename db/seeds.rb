# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
Product.destroy_all
User.destroy_all

puts "Creating Users"

#sellers
milene = { name: "Milene Cardoso", username: "milene", password: "1234567", cellphone: 123456787, address: "copacabana", seller: true, email: "milene@gmail.com"}
nicole = { name: "Nicole Ochoa", username: "nicoleocla", password: "1234567", cellphone: 123456786, address: "quito" seller: true, email: "nicole@gmail.com"}

#users
matheus = { name: "Matheus Penchel", username: "mcpenchel", password: "1234567", cellphone: 123456789, address: "copacabana", email: "matheus@gmail.com"}
isa = { name: "Isabella Meyer", username: "imeyer", password: "1234567", cellphone: 123456788, address: "copacabana", email: "isa@gmail.com"}

[ milene, nicole, matheus, isa].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.name}"
end

puts "Creating products"

orange_juice = { name: "Orange Juice", description: "Organic Oranges from Ecuador", price: 1.20, stock: 10, user_id: 2}
milk = { name: "Lechera Milk", description: "Best Milk Ever", price: 1.40, stock: 0, user_id: 2}
pao_de_mel = { name: "Pao de Mel", description: "The best Pao de Mel from Leo's girlfriend", price: 2.00, stock: 25, user_id: 1}
home_made_cookies = { name: "Home Made Cookies", description: "Gluten Free and Delicous", price: 2.20, stock: 3, user_id: 1}

[ orange_juice, milk, pao_de_mel, home_made_cookies].each do |attributes|
  product = Product.create!(attributes)
  puts "Created #{product.name}"
end


puts "Creating Reviews"

review1 = {rating: 2, description: "", user_id: 3, product_id: 1}
review2 = {rating: 5, description: "Great Juice!", user_id: 4, product_id: 1}
review3 = {rating: 5, description: "Best i've ever had", user_id: 4, product_id: 3}
review4 = {rating: 5, description: "", user_id: 3, product_id: 3}
review5 = {rating: 3, description: "", user_id: 3, product_id: 1}

[ review1, review2, review3, review4, review5].each do |attributes|
  review = Review.create!(attributes)
end


puts "finished!"

