# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pluto_mass = 1.305 * (10^22)
Planet.create ({
	name: "pluto",
    image_url: "http://moviewriternyu.files.wordpress.com/2014/01/pluto.jpg",
    diameter: 2302,
    mass: pluto_mass,
    life: false
      })