# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Gladiator.delete_all

100.times do
  Gladiator.create({
    name: Faker::Name.name,
    weapon: Faker::Commerce.product_name,
    victory_count: Faker::Number.number(3)
    })
end
