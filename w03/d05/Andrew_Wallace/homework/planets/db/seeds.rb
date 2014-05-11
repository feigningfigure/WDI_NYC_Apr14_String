# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Planet.destroy_all
Moon.destroy_all

planets = Planet.create([

{ name: "Mercury",
image_url: "http://upload.wikimedia.org/wikipedia/commons/3/30/Mercury_in_color_-_Prockter07_centered.jpg",
diameter: 4880,
mass: 55,
life: false
},

{ name: "Venus",
image_url: "http://upload.wikimedia.org/wikipedia/commons/8/85/Venus_globe.jpg",
diameter: 12092,
mass: 815,
life: false
},


{name: "Earth",
image_url: "http://upload.wikimedia.org/wikipedia/commons/6/6f/Earth_Eastern_Hemisphere.jpg",
diameter: 12742,
mass: 1000,
life: true
},


{name: "Mars",
image_url: "http://upload.wikimedia.org/wikipedia/commons/e/e4/Water_ice_clouds_hanging_above_Tharsis_PIA02653_black_background.jpg",
diameter: 6787,
mass: 107,
life: false
},


{name: "Jupiter",
image_url: "http://upload.wikimedia.org/wikipedia/commons/5/5a/Jupiter_by_Cassini-Huygens.jpg",
diameter: 142984,
mass: 317800,
life: false
},


{name: "Saturn",
image_url: "http://upload.wikimedia.org/wikipedia/commons/2/25/Saturn_PIA06077.jpg",
diameter: 25000,
mass: 95152,
life: false
},


{name: "Uranus",
image_url: "http://upload.wikimedia.org/wikipedia/commons/3/3d/Uranus2.jpg",
diameter: 51118,
mass: 14536,
life: false
},


{name: "Neptune",
image_url: "http://upload.wikimedia.org/wikipedia/commons/0/06/Neptune.jpg",
diameter: 49528,
mass: 14536,
life: false
}
])
