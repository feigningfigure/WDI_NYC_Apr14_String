weapons = [
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

descriptions = [
"mighty warrior",
"pretty little girl",
"dumb brute",
"giant ogre",
"fluffy bunny",
"wimpy bookworm",
"ninja in pink",
"sickly old geezer",
"new born baby",
"armored sloth",
"vampire cloud"]

Gladiator.delete_all

10.times do
Gladiator.create({
  name: "#{Faker::Name.last_name}",
  weapon: weapons.sample,
  description: descriptions.sample,
  victory_count: rand(0..30)
  })
end