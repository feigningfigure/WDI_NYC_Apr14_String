# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: ''Chicago'' }, { name: ''Copenhagen'' }])
#   Mayor.create(name: ''Emanuel'', city: cities.first)

planets = Planet.all

planets.each do |planet| 
  planet.destroy
end


planets = Planet.create(
  [
    {name: 'Mercury',
    image_url: 'https://pds.jpl.nasa.gov/planets/images/thumb/Welcome/merglobe.gif',
    diameter: 4879.4,
    mass: 3.3,
    mass_factor: 23,
    life: false},
    
    {name: 'Venus',
    image_url: 'https://pds.jpl.nasa.gov/planets/images/thumb/Welcome/venglobe.gif',
    diameter: 12104,
    mass: 4.87,
    mass_factor: 24,
    life: false},
    
    {name: 'Earth',
    image_url: 'https://pds.jpl.nasa.gov/planets/images/thumb/Welcome/earglobe.gif',
    diameter: 12756,
    mass: 5.98,
    mass_factor: 24,
    life: false},
    
    {name: 'Mars',
    image_url: 'https://pds.jpl.nasa.gov/planets/images/thumb/Welcome/marglobe.gif',
    diameter: 6787,
    mass: 6.42,
    mass_factor: 23,
    life: false},
    
    {name: 'Jupiter',
    image_url: 'https://pds.jpl.nasa.gov/planets/images/thumb/Welcome/jupglobe.gif',
    diameter: 142800,
    mass: 1.90,
    mass_factor: 27,
    life: false},
    
    {name: 'Saturn',
    image_url: 'https://pds.jpl.nasa.gov/planets/images/thumb/Welcome/2moons_2.gif',
    diameter: 120660,
    mass: 5.69,
    mass_factor: 26,
    life: false},
    
    {name: 'Uranus',
    image_url: 'https://pds.jpl.nasa.gov/planets/images/thumb/Welcome/uraglobe.gif',
    diameter: 51118,
    mass: 8.68,
    mass_factor: 25,
    life: false},
    
    {name: 'Neptune',
    image_url: 'https://pds.jpl.nasa.gov/planets/images/thumb/Welcome/nepglobe.gif',
    diameter: 49528,
    mass: 1.02,
    mass_factor: 26,
    life: false}
  ]
)
  



# cities = City.create([{ name: ''Chicago'' }, { name: ''Copenhagen'' }])
#   Mayor.create(name: ''Emanuel'', city: cities.first)
