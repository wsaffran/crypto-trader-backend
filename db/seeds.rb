# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'time'

user1 = User.create(username: "will", first_name: "Will", last_name: "Saffran", balance: 1000)
purchase1 = Purchase.create(user_id: 1, coin_id: 1, num_of_coins: 5, price: 5000, time_of_purchase: Time.now())
