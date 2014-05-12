Crayon.delete_all
Owner.delete_all

owners = []

funny_titles = [
  "Sgt. Pepper",
  "Mr. Sir",
  "Mrssss.",
  "King",
  "Sensei"
]

10.times do
  owners << Owner.create({
    name: Faker::Name.name,
    formal_title: funny_titles.sample
    })
end


10.times do
  # this will make a new instance of Crayon
  # then save it to the database in one swoop.
  Crayon.create({
    name: Faker::Commerce.color,
    intensity: rand(10)
  })

end



