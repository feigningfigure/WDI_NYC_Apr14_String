100.times do

  # this will make a new instance of Crayon
  # then save it to the database in one swoop.
  Crayon.create({
    name: Faker::Lorem.sentence(1),
    intensity: rand(100)
  })

end
