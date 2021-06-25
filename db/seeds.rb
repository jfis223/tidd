# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all previous elements..."

Notification.destroy_all
PetCategory.delete_all
PetNotification.delete_all
Category.delete_all
Pet.delete_all
Plant.delete_all
User.delete_all

user = User.create!(name: 'julian', email: 'juliandemeuse@gmail.com', password: 'password')
user_avatar = open('https://cdn.vox-cdn.com/uploads/chorus_asset/file/17588772/1031085.jpg')
user.avatar.attach(io: user_avatar, filename: 'image.jpg')

puts 'Creating your pets, plants and categories...'

pet2 = Pet.create!(name: 'Bob', species: 'dog', breed: "Beagle", weight: 2, birthdate: '10/03/1990', user: user)
pet2_image = open('https://miro.medium.com/max/1000/1*2bZ6LsJfuZ9CaQxljNvaFA.jpeg')
pet2.image.attach(io: pet2_image, filename: 'image.jpg')

pet3 = Plant.create!(nickname: 'Matt', species: 'Common Rue', user: user)
pet3_image = open('https://www.gardencentrekoeman.co.uk/db/WAS4ef38d3b709d5/14573426226221523574_10be9b6cda_o.jpg')
pet3.image.attach(io: pet3_image, filename: 'image.jpg')

pet4 = Plant.create!(nickname: 'Jane', species: 'Cactus', user: user)
pet4_image = open('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cactus-plant-pot-stand-1599155636.jpg')
pet4.image.attach(io: pet4_image, filename: 'image.jpg')

category1 = Category.create!(name: "Food")
category2 = Category.create!(name: "Vet")
category3 = Category.create!(name: "Walk")
category4 = Category.create!(name: "Bath")

puts "All seeds created successfully"
