# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Planet.delete_all
Moon.delete_all

# Planet.create({
#     name: "Mars",
#     image_url: "mars.com",
#     diameter: 5,
#     mass: 50,
#     life: true
#   })

# Moon.create({
#     name: "Titan",
#     planet_id: 2
#   })
