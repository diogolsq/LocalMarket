# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

caneta = OrdersToProduct.new(quantity: 10,unit_price:5)
cadeira = OrdersToProduct.new(quantity: 10, unit_price:12)

user1 = User.new(name: "Mauricio" , cellphone: 12345678, address: "copacabana")
