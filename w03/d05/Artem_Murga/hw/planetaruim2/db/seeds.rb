# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

planet = Planet.create ({
	name: "Unknown",
	image_url: "Unknown",
	diameter: "Unknown",
	mass: 0,
	life: false
	})


# t.string   "name"
#     t.string   "image_url"
#     t.integer  "diameter"
#     t.integer  "mass"
#     t.boolean  "life"
#     t.datetime "created_at"
#     t.datetime "updated_at"