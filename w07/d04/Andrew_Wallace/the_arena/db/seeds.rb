weapons = ["sword", "trident", "mace", "axe", "boomstick"]

50.times do
Gladiator.create(
    name: "#{Faker::Name.name}",
    weapon: weapons.sample,
    victory_count: rand(50)
  )
end
