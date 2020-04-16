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
# TO DO : AJOUTER LES PHOTOS
laura = User.create!(email: "laura@marmotton.com", password: "password", first_name: "Laura", last_name: "Carrere")
laura_pic = URI.open("https://lh3.googleusercontent.com/7IlSPaHM1Cwr-8PM42ylJUAr0IUNlcHM-cCebDGqSIsiMFcBt8ceut_dnD7KbaUcOLzdOiCzUWkuN8SsOjV87ikl_Iq86b0sfVPMpJBhUPBvU4c5vm3WYfySqRXJE227mlL3uetQVpVO-fdHmxnctVn7aIz2XQTXTOMNE4D0x_895kCTsp5lUEbaZTJ_Yqa-6I6J9FmPI9w8u0wt9E7Z8G8MZl3_XYW0KijhPaUcjNMNtWRFoZJovVTjer_taQHf4s-YF-SqIWJAfKAUPimVuyaCLB2OZ4X8r2awbXr7ycPhIlPWb0421ENy1AoCp5Gi4VKEFxyUz96wlexES_rPG3nC3G49rtK4N4MYeYgiy5r9UK-J-yG_TiC8Tm8K1fZufh8-IwL1AXX0JMZZuCYSGILHC7U7VXvOiubNdTO-I6ccr90lgWKwgJd5FVJVsp2coi26qi08i6XUjynVm1o5USRbYXYhHIiLqIrUW9t4in6tPZrmDMzAh1J5FTRXE_e-nN1JZOaV7oJ6EayxeNzLv-FLsGk5mWCFeJ7EbyDa5ouV7_NloTJOpqzlv4TqXTciNvv6U2yTIJnTpU1siXA4xJ_EJG-hwyyWdfSDLvtRPf1L97k6T03SxSWR3PnsqyyZ2MpryQHx34yFrp5iBxyhPN-kmJjTJkMXQWsuhL8bbzKafh8I6X9UQpbjhGmozzoMZ15sbZ7IdliPtdTY5IrVbwgKn8WWMXEZfydX8_MAhq4=w962-h640-no")
laura.photo.attach(io: laura_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
laura.save!

# dany = User.create!(email: "dcthibault@orange.fr", password: "password", first_name: "Dany", last_name: "Thibault")
# dany_pic = URI.open("https://lh3.googleusercontent.com/i8E8KVJLPZR1PNdtsxIF_GMtJWH_ljEV8cHLqdIHshQ6ljsLHdb79WoJ6wywMGnQzahyp18bJ6GahUdrVcd0cIYeda78GG_vph6jVxR3jrT9HuCrHIX20y8Os-gpfZtbmB5V2pwtAymD4eK-_Dx6zCuhV3Od0bWP_s3dZmQzX5WkEHoqp5jRHBoSVkZrLDPxOXIPQHbjbLi4PfDJOaNE-tNhVfbCX0Gg2QeDjxaURiJBGsDZSCTz6MYy1JGJJV4Bz8yt4Kc4PrxqvuZcg08WIRQlhQ4tWs_Mp82xv5ybtAmvxb6jdEM2MLY-vlp9w6QvorJRJCIDzSOgEdDlmbzYUfcDdYxKPrOMSZzHgJRxn5zhhu3Xw_xs8QO2nRFRqGBSyDj0UyapBZ7CQZJZOcAHYC07qYSyG4_0Nt3T1GxhpK1wqLajtAcHAnFY-qrNNVk579XjJZ0cA5gInM1pDCWYsnQULj950D6_n7iHBwnQqcawYt0ksJAdqaAMDOjgbLR8e3XMAsekv49qzhUHhZL0UYYO9yNMLLz-ApFnmNtBi0rO7L_IwYwMNTdbO1vI2gDWb3DSMbewUeI1ZhvMZcZ5vicz8qtZGOxL2yr8KI1Ah9V-PZKEvjQo6ESkvDkwCGi3OS5hWWx8NW7Xc67LB0ZtELpv0YGHiLbEFhg-fFIlxGSs31v0GBmMYxg=w250-h374-no")
# dany.photo.attach(io: dany_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
# dany.save!

# mo = User.create!(email: "mo.carrere71@gmail.com", password: "password", first_name: "Marie-Odile", last_name: "Carrere")
# mo_pic = URI.open("https://lh3.googleusercontent.com/KO7YCKjFV7BokKT49IttY99MIipZxRtrd-OVZjS7aUcc_CDx8XfwYpXM6E7zjj7H8DRdWqTuFeh9R26Yd-F7MaUa101WGcp6hTWRKXeb-5oF1zcoC9hTHApDHvBlsWXoPr-MTCqstCVnruCc76ttjk2HUEdM6bD9PN-ZqVt3TOAgUKw5RREmZd-4njJNXKDln_FsIyQWaykgmzYDfYY5N5_i4T6yRfFjKvUwa3_zpAruaye5xWzRY2XCOF5fxPCxvunNnFC5cZoikOZjLoTG7jKYRTfVnLieOAiK7IB0Q0_Gh35vatKiBXkKw7VFi2ze4OxS8Zym38Bwy_t5TQotdH-a54sflLskdX1aqHfPR8h0jt2eK1I0C8ZKYtHLrU8s4vJVS_ta3R5eNaY29E2fm8RpIL_FBYbNqs-QnOlYW4gxgR8iQIwl_kzozqtQSPzPjeHT_W2_P5VbRCfXHzf1wbFeoFwwUsco9-jzr3VzJ-J9wGZBfj_8Vvkjvq7NTziQi-xHooViCMwOoSA8AZjMbzMjiM6smptVQcSKOWiyomFayOqYVvLZqFtPk8lRoWXZZWQn1KpjGcMs6cZ2Ul799WAc7ftyxtB1yCDLyonwYD-ojFww08eC8mPRZweFIk780tFjfxASTtn4nLlxjveljrXABs9rmNOCC20E5R8sIo623JHBUd9ymkE=w460-h689-no")
# mo.photo.attach(io: mo_pic, filename: 'some-image.jpg', content_type: 'image/jpg')
# mo.save!


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















