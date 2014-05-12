# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




planets << Planet.create({
  name: planets,
  image_url: string,
  diameter: integer,
  mass: integer,
  life: boolean
  })


# Planet.new({
  # name: Mars,
  # image_url: http://nssdc.gsfc.nasa.gov/image/planetary/mars/marsglobe3.jpg,
  # diameter: 4212,
  # mass: 639,
  # life: true

#   });

# >> p = Planet.create
#   :name => "Mars",
#   :image_url => "http://nssdc.gsfc.nasa.gov/image/planetary/mars/marsglobe3.jpg",
#   :diameter => 4212,
#   :mass => 639,
#   :life => "true"

# # The below code entered into Rails Console will enter a single entry to the database:
# console > Planet.create(name: 'Mars',
#   image_url: 'http://nssdc.gsfc.nasa.gov/image/planetary/mars/marsglobe3.jpg',
#   diameter: 4212,
#   mass: 639,
#   life: 'true')

# Planet.save

# Planet.all
