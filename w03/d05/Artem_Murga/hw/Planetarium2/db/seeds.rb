# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




	Moon.create ({
	name: "Moon",
	planet_id: 103,
	})

	Moon.create ({
	name: "Phobos",
	planet_id: 104,
	})

	Moon.create ({
	name: "Deimos",
	planet_id: 104,
	})




# Planet.create ({
# 	name: "Mercury",
# 	#1600*800
# 	image_url: "http://celestial-alchemy.com/wp-content/uploads/2011/12/Mercury.jpg",
# 	diameter: 40,
# 	mass: 5,
# 	life: false
# 	})

# Planet.create ({
# 	name: "Venus",
# 	#1024*1024
# 	image_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Venus_globe.jpg/1024px-Venus_globe.jpg",
# 	diameter: 95,
# 	mass: 82,
# 	life: false
# 	})

# Planet.create ({
# 	name: "Earth",
# 	#1050*1050
# 	image_url: "http://img3.wikia.nocookie.net/__cb20070107194906/uncyclopedia/images/3/36/Earth.jpg",
# 	diameter: 100,
# 	mass: 100,
# 	life: true
# 	})

# Planet.create ({
# 	name: "Mars",
# 	#1050*1050
# 	image_url: "http://2.bp.blogspot.com/__bqXP4eg7X8/TIuIb2kZeTI/AAAAAAAABWE/v3WQ4MozC9g/s1600/Mars-3.jpg",
# 	diameter: 50,
# 	mass: 11,
# 	life: false
# 	})


# moon = Moon.create ({
# 	name: "Moon1",
# 	planet_id: 1,
# 	})


# t.string   "name"
#     t.string   "image_url"
#     t.integer  "diameter"
#     t.integer  "mass"
#     t.boolean  "life"
#     t.datetime "created_at"
#     t.datetime "updated_at"