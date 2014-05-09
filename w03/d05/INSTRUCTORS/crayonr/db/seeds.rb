Crayon.delete_all

100.times do
  # this will make a new instance of Crayon
  # then save it to the database in one swoop.
  Crayon.create({
    name: Faker::Commerce.color,
    intensity: rand(100)
  })

end
