# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


planets = []



planets << Planet.create({
    name: "Mercury",
    image_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Mercury_in_color_-_Prockter07_centered.jpg/270px-Mercury_in_color_-_Prockter07_centered.jpg,",
    diameter: 100,
    mass: 100,
    life: false
    })

Moon.create({
  name: "Moon",
  image_url: "http://upload.wikimedia.org/wikipedia/commons/e/e1/FullMoon2010.jpg",

  })
