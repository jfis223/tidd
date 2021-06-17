# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all previous elements..."

Category.delete_all
PetCategory.delete_all
PetNotification.delete_all
Pet.delete_all
Plant.delete_all
User.delete_all


user = User.create!(name: 'joaquin', email: 'email@gmail.com', password: 'password')


puts 'Creating your pet...'

pet1 = Pet.create!(name: 'Coline', species: 'cat', breed: "American Curl", weight: 2, birthdate: '10/01/2020', location: 'Madrid', user: user)

