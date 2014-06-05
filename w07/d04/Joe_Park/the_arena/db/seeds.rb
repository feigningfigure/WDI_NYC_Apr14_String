@weapons_list = [
  "Medieval Dagger",
  "Baselard",
  "Cinquedea",
  "Ear dagger",
  "Groes Messer",
  "Katar",
  "Mercygiver",
  "Poniard",
  "Rondel",
  "Scramasax",
  "Sgian",
  "Stiletto",
  "Dirk",
  "Anelace",
]

# Gladiator.delete_all
@weapons_list.each do |weapon|

  Gladiator.create({
    name: Faker::Name.name,
    weapon: weapon,
    victory_count: Faker::Number.digit.to_i

    })

end




