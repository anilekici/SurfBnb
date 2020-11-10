# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting surfboards"
Surfboard.destroy_all
puts "deleting users"
User.destroy_all

puts "creating users"
20.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
end


puts "creating surfboards"
20.times do
  Surfboard.create!(
      user_id: rand(21..40),
      model: Faker::Movies::StarWars.character,
      price: rand(20..40),
      description: Faker::Quote.yoda,
      size: ["Small", "Medium", "Big"].sample,
  )
end