# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Deleting all Flats......'
Flat.destroy_all

puts 'Creating Flats....'
10.times do
  Flat.create!(name: Faker::Lorem.sentence, address: Faker::Address.full_address, description: Faker::Lorem.paragraph,
               price_per_night: (100..200).to_a.sample, number_of_guests: (1..5).to_a.sample)
end

puts 'Created Flats!'

# t.string "name", null: false
# t.string "address", null: false
# t.text "description", null: false
# t.integer "price_per_night", null: false
# t.integer "number_of_guests", null: false
