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


100.times do
  # this will make a new instance of Crayon
  # then save it to the database in one swoop.
  crayon = Crayon.new({
    name: Faker::Commerce.color,
    intensity: rand(100),
    #the in class work
    #owners_id: owners.sample.id
  })

  crayon.owner = owners.sample

  crayon.save

end
