# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# weapon - string

# name - string

# victory_count - integer


weapons = ['sword', 'axe', 'lance', 'trident', 'dagger', 'bow']

5.times do
  Gladiator.create({
    name: Faker::Name.name,
    weapon: weapons.sample,
    victory_count: rand(1..20)
    })
end
