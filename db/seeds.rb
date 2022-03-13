# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
puts "Destroy all Recipes"
Ingredient.destroy_all
puts "Destroy all Ingredients"
User.destroy_all
puts "Destroy all Users"

password = "123456"

User.create(email: "t@g.com", password: password)
User.create(email: "b@g.com", password: password)
puts "Create two users : #{User.first.email} and #{User.last.email}"
