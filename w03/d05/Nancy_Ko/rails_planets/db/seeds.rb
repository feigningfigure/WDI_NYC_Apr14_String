# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
1.times do
Planet.create([{


	name: "Mercury",
	image_url: "http://nineplanets.org/gif/Mercury.jpg",
	diameter: 4800,
	mass: 3.30,
	life: false

	# name: "Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"
	# image_url: "http://nineplanets.org/gif/Mercury.jpg", "http://nineplanets.org/gif/venusmar.jpg", "http://nineplanets.org/gif/earthafr.jpg", "http://nineplanets.org/gif/Mars.jpg", "http://nineplanets.org/gif/Jupiter500.jpg", "http://nineplanets.org/gif/Saturn.jpg", "http://nineplanets.org/gif/Uranus.jpg", "http://nineplanets.org/gif/Neptune.jpg"
	# diameter: 4,880 km, 12,103.6 km, 12,756.3 km, 6,794 km, 142,984 km, 120,536 km, 51,118 km, 49,532 km
	# mass: 3.30e23 kg, 4.869e24 kg, 5.972e24 kg, 6.4219e23 kg, 1.900e27 kg, 5.68e26 kg, 8.683e25 kg, 1.0247e26 kg
	# life: false
	}])
end
