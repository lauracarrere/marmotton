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

dany = User.create!(email: "dcthibault@orange.fr", password: "password", first_name: "Dany", last_name: "Thibault")
dany_pic = URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
dany.photo.attach(io: laura_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
dany.save!

mo = User.create!(email: "mo.carrere71@gmail.com", password: "password", first_name: "Marie-Odile", last_name: "Carrere")
mo_pic = URI.open("https://photos.google.com/photo/AF1QipMAGtqIMergxUst1PwQ9gUKa3pIEWr-3TBlYCs")
mo.photo.attach(io: mo_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
mo.save!

puts 'Creating recipes...'
gateau = Recipe.create!(user: laura, name: "Gâteau au chocolat",
  description: "Préchauffez votre four à 180°C (thermostat 6).\n
  Dans une casserole, faites fondre le chocolat et le beurre coupé en morceaux à feu très doux.\n
  Dans un saladier, ajoutez le sucre, les oeufs, la farine. Mélangez.\nAjoutez le mélange chocolat/beurre. Mélangez bien.\n
  Beurrez et farinez votre moule puis y versez la pâte à gâteau.\n
  Faites cuire au four environ 20 minutes.\n
  A la sortie du four le gâteau ne paraît pas assez cuit. C'est normal, \
  laissez-le refroidir puis démoulez- le.", time: 40, difficulty: 1)

gougeres = Recipe.create!(user: laura, name: "Gougères au fromage",
  description: "Préchauffez le four à 200°C (th 6-7).
  Dans une casserole, portez 25 cl d'eau à ébullition, avec le beurre coupé en morceaux \
  + 1 cuillère à café de sel." + "\n" +
  "Hors du feu, ajoutez la farine d'un coup.\n
  Mélangez vivement, et faites dessécher pendant 1 min sur feu doux.\n
  Laissez tiédir quelques instants, et incorporez les oeufs un par un en mélangeant bien.\n
  Ajoutez le gruyère râpé, la muscade, le sel et le poivre.\n
  Déposez cette pâte à l'aide de 2 cuillères à café, en petits tas séparés, sur une plaque beurrée.\n
  Vous pouvez dorer les petites gougères avec un jaune d'oeuf, à l'aide d'un pinceau.\n
  Enfournez 25 min en surveillant.\
  C'est prêt", time: 45, difficulty: 2)

puts 'attaching photos...'
gateau_pic = URI.open("https://images.unsplash.com/photo-1490126125528-a0c3b2998dcd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80")
gateau.photo.attach(io: gateau_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

gougeres_pic = URI.open("https://assets.afcdn.com/recipe/20160513/2643_w648h414c1cx1908cy2861.jpg")
gougeres.photo.attach(io: gougeres_pic, filename: 'some-image.jpg', content_type: 'image/jpg')

puts 'Creating ingredients...'
farine = Ingredient.create!(name: "farine")
chocolat = Ingredient.create!(name: "chocolat patissier")
sucre = Ingredient.create!(name: "sucre")
beurre = Ingredient.create!(name: "beurre")
oeuf = Ingredient.create!(name: "oeuf")
gruyere = Ingredient.create!(name: "gruyère")
muscade = Ingredient.create!(name: "muscade")

puts 'Creating quantities...'
farine_gateau = Quantity.create!(recipe: gateau, ingredient: farine, description: "100 g")
choc_gateau = Quantity.create!(recipe: gateau, ingredient: chocolat, description: "200 g")
sucre_gateau = Quantity.create!(recipe: gateau, ingredient: sucre, description: "100 g")
beurre_gateau = Quantity.create!(recipe: gateau, ingredient: beurre, description: "200 g")
oeuf_gateau = Quantity.create!(recipe: gateau, ingredient: oeuf, description: "4")

oeuf_gougeres = Quantity.create!(recipe: gougeres, ingredient: oeuf, description: "4")
gruy_gougeres = Quantity.create!(recipe: gougeres, ingredient: gruyere, description: "150 g")
farine_gougeres = Quantity.create!(recipe: gougeres, ingredient: farine, description: "150 g")
beurre_gougeres = Quantity.create!(recipe: gougeres, ingredient: beurre, description: "80 g")
muscade_gougeres = Quantity.create!(recipe: gougeres, ingredient: muscade, description: "1 pincée")















