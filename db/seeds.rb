# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  Assembly.create(name: Faker::Pokemon.name)
end

10.times do
  Part.create(part_number: Faker::Dessert.variety)
end

10.times do
  Assembly_part.create(assembly_id: rand(1..10), part_id: rand(1..10))
end # Ne fonctionne pas