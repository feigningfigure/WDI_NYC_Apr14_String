# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


planet_array = [
  'Mercury',
  'Venus',
  'Earth',
  'Mars',
  'Jupiter',
  'Saturn',
  'Uranus',
  'Nepture'
]

mooon = []
25.times  do
  mooon << Mooon.create({
    name: Faker::Address.country,
    image_url: 'http://d1jqu7g1y74ds1.cloudfront.net/wp-content/uploads/2010/06/Moon.jpg',
    diameter: 868.55,
    mass: 7.3477,
    life: true,
    planet_name: planet_array.sample
    })
# mooon.planet_name = planet.name

# mooon.save
end


