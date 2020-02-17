# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning Users, Receipes, Ingredients and Quantities database...'
Recipe.destroy_all
Ingredient.destroy_all
Quantity.destroy_all
User.destroy_all

puts 'Creating users...'
laura = User.create!(email: "laura@marmotton.com", password: "password", first_name: "Laura", last_name: "Carrere")

puts 'Creating recipes...'
gateau = Recipe.create!(user: laura, name: "gateau au chocolat",
  description: "mélanger tous les ingrédients", time: 30, difficulty: 3)

puts 'attaching photos...'
puts 'Linking with photos...'
gateau_pic = URI.open("https://images.unsplash.com/photo-1490126125528-a0c3b2998dcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
gateau.photo.attach(io: gateau_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

puts 'Creating ingredients'
farine = Ingredient.create!(name: "farine")

puts 'Creating quantities...'
grams = Quantity.create!(recipe: gateau, ingredient: farine, description: "30g")


