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
laura_pic = URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
laura.photo.attach(io: laura_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
laura.save!

puts 'Creating recipes...'
gateau = Recipe.create!(user: laura, name: "Gâteau au chocolat",
  description: "Préchauffez votre four à 180°C (thermostat 6).\n
Dans une casserole, faites fondre le chocolat et le beurre coupé en morceaux à feu très doux.\n
Dans un saladier, ajoutez le sucre, les oeufs, la farine. Mélangez.\n
Ajoutez le mélange chocolat/beurre. Mélangez bien.\n
Beurrez et farinez votre moule puis y versez la pâte à gâteau.\n
Faites cuire au four environ 20 minutes.\n
A la sortie du four le gâteau ne paraît pas assez cuit. C'est normal, laissez-le refroidir puis démoulez- le.", time: 40, difficulty: 1)

puts 'attaching photos...'
gateau_pic = URI.open("https://images.unsplash.com/photo-1490126125528-a0c3b2998dcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
gateau.photo.attach(io: gateau_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

puts 'Creating ingredients'
farine = Ingredient.create!(name: "farine")

puts 'Creating quantities...'
grams = Quantity.create!(recipe: gateau, ingredient: farine, description: "30g")


