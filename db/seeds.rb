# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "emtpying the db"

Flat.destroy_all

p "start seeding"
4.times do
  flat = Flat.new
  city = Faker::Address.city
  flat.name = "Beautiful flat in " + city
  flat.address = Faker::Address.street_address + ", " + city
  flat.description = Faker::Lorem.paragraph
  flat.price_per_night = rand(50..500)
  flat.number_of_guests = rand(1..10)
  flat.save!
end

p "done, boss"
