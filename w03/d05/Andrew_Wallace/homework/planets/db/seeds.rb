# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Planet.destroy_all
Moon.destroy_all

Planet.create([

{ name: "Mercury",
image_url: "Mercury.png",
diameter: 4880,
mass: 55,
life: false
},

{ name: "Venus",
image_url: "Venus.png",
diameter: 12092,
mass: 815,
life: false
},


{name: "Earth",
image_url: "Earth.png",
diameter: 12742,
mass: 1000,
life: true
},


{name: "Mars",
image_url: "Mars.png",
diameter: 6787,
mass: 107,
life: false
},


{name: "Jupiter",
image_url: "Jupiter.png",
diameter: 142984,
mass: 317800,
life: false
},


{name: "Saturn",
image_url: "Saturn.png",
diameter: 25000,
mass: 95152,
life: false
},


{name: "Uranus",
image_url: "Uranus.png",
diameter: 51118,
mass: 14536,
life: false
},


{name: "Neptune",
image_url: "Neptune.png",
diameter: 49528,
mass: 14536,
life: false
}
])


Moon.create([
  {

  }
])
