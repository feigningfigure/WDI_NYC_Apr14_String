Brewery.delete_all
Beer.delete_all

10.times do
  brewery = Brewery.new({
    name: Faker::Company.name,
    location: Faker::Address.city,
    description: Faker::Lorem.sentence(4).to_s
    })

  beers = []
  5.times do
    beers << Beer.create({
      name: Faker::Lorem.words(1).to_s,
      style: Faker::Lorem.characters(3).to_s,
      description: Faker::Lorem.sentence(2).to_s,
      })
  end

  # Saves 5 beers each to a brewery
  beers.each do |beer|
    brewery.beers << beer
  end

brewery.save!
end
