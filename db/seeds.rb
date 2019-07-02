# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do
  Hipster.create(
    name: Faker::Name.name,
    beer: Faker::Beer.style,
    coffee: Faker::Coffee.notes,
    quote: Faker::Hipster.sentence
  )
end