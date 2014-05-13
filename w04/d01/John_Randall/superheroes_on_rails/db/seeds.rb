# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Superteam.delete_all

Superhero.delete_all



Superteam.create(
  {name: 'Avengers',
  headquarters: 'Avengers Mansion',
  headquarters_location: '890 Fifth Avenue, NYC, New York City, New York'}
)

Superteam.create(
  {name: 'Justice League',
  headquarters: 'Hall of Justice',
  headquarters_location: 'Metropolis'}
)

Superteam.create(
  {name: 'X-Men',
  headquarters: 'X-Mansion',
  headquarters_location: '1407 Graymalkin Lane, Salem Center (part of the town of North Salem), located in the very northeast corner of Westchester County, New York.'}
)

# Superteam = Superteam.all






Superhero.create(  
  {name: 'Spiderman',
  super_power: 'web slinging',
  superteam_id: (Superteam.find_by(name: 'Avengers').id)}
  )


Superhero.create(    
  {name: 'Thor',
  super_power: 'godly-ness',
  superteam_id: (Superteam.find_by(name: 'Avengers').id)
  }
  )

Superhero.create(  
  {name: 'Superman',
  super_power: 'super-ness',
  superteam_id: (Superteam.find_by(name: 'Justice League').id)
  })

Superhero.create(  
  {name: 'Green Lantern',
  super_power: "it/'s complicated",
  superteam_id: (Superteam.find_by(name: 'Justice League').id)
  })

Superhero.create(  
  {name: 'Wolverine',
  super_power: 'Adamantium',
  superteam_id: (Superteam.find_by(name: 'X-Men').id)
  })

Superhero.create(  
  {name: 'Professor X',
  super_power: 'Telepathy, etc.',
  superteam_id: (Superteam.find_by(name: 'X-Men').id)
  }
)
