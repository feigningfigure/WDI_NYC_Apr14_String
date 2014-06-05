Gladiator.delete_all

weapons = ["Arcus", "Contus", "Acinaces", "Fascina", "Gladius", "Gladius Graecus", "Hasta", "Iaculum", "Lancea", "Parmula", "Pilum"]


30.times do
Gladiator.create({
  name: Faker::Name.name,
  weapon: weapons.sample,
  victory_count: Faker::Number.number(2)
})
end
