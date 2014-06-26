Gladiator.delete_all

10.times do
  Gladiator.create({
    name: Faker::Name.name,
    weapon: "sword",
    victory_count: rand(10)
  })
end
