# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all previous elements..."

PetCategory.delete_all
PetNotification.delete_all
Category.delete_all
Pet.delete_all
Plant.delete_all
User.delete_all

user = User.create!(name: 'julian', email: 'julian@gmail.com', password: 'password')
user_avatar = open('https://cdn.vox-cdn.com/uploads/chorus_asset/file/17588772/1031085.jpg')
user.avatar.attach(io: user_avatar, filename: 'image.jpg')

puts 'Creating your pets, plants and categories...'

pet1 = Pet.create!(name: 'Coline', species: 'cat', breed: "American Curl", weight: 2, birthdate: '10/01/2020', location: 'Madrid', user: user)
pet1_image = open('https://upload.wikimedia.org/wikipedia/commons/1/17/American_curl_2.jpg')
pet1.image.attach(io: pet1_image, filename: 'image.jpg')

pet2 = Pet.create!(name: 'Bob', species: 'dog', breed: "Akita", weight: 2, birthdate: '10/03/1990', location: 'Madrid', user: user)
pet2_image = open('https://www.thesprucepets.com/thmb/Z73KKcKtsJ1fovlbIlvNSubG6o0=/1885x1414/smart/filters:no_upscale()/Akita-GettyImages-588622984-533e955df9214301a56b4c0689b32114.jpg')
pet2.image.attach(io: pet2_image, filename: 'image.jpg')

pet3 = Plant.create!(nickname: 'Joaquin', location: 'Madrid', species: 'Cress', user: user)
pet3_image = open('https://cdn.britannica.com/s:800x450,c:crop/85/180185-138-99D93506/Overview-garden-cress.jpg')
pet3.image.attach(io: pet3_image, filename: 'image.jpg')

category1 = Category.create!(name: "Food")
category2 = Category.create!(name: "Vet")
category3 = Category.create!(name: "Walks")
category4 = Category.create!(name: "Baths")

puts "All seeds created successfully"
