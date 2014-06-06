@weapons = [
"mace",
"light-saber",
"ninja stars",
"household cleaning products",
"samurai sword",
"chopsticks",
"bare fists",
"bear fists",
"spatula",
"attack dog",
"horrible dragon breath",
"hugs"]

20.times do
  Gladiator.create({
    name: Faker::Name.name,
    weapon: @weapons.sample,
    victory_count: rand(1...20)
  })
end
