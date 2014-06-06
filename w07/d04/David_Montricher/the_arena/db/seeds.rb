Gladiator.delete_all

@weapons_list = [
"Baselard",
"Cinquedea",
"Ear dagger",
"GroBes Messer",
"Katar",
"Mercygiver",
"Poniard",
"Rondel",
"Scramasax",
"Sgian",
"Stiletto",
"Dirk",
"Anelace",
"Parrying Dagger",
"Seax",
"Sai",
"Arming sword",
"Shortsword",
"Zweihander",
"Claymore",
"Longsword",
"Broadsword",
"Falchion",
"Flamberge",
"Sabre",
"Katana",
"Ulfberht",
"Battle axe",
"Club"]

20.times.do
  Gladiator.create({
    name: Faker::Name.name,
    weapon: @weapons_list.sample,
    victory_count: rand(1..20)
    })
end
