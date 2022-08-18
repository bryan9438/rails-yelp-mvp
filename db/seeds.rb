require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  # restaurant = Restaurant.create([{ name: "Mc Donalod" }, { name: "KFC" }, { name: "Burger King" }, { name: "Five Guys" }, { name: "Munchies" }])
  # Address

CATEGORY = %w[chinese italian japanese french belgian]

puts 'Creating 5 fake posts...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: CATEGORY.sample
  )
  restaurant.save!
end
puts 'Finished!'
