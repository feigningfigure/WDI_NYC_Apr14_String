Brewery.delete_all
Beer.delete_all


ingredients = [
  "hops",
  "oats",
  "barley",
  "wheat",
  "spices"
]

amounts = [
  "1 lb",
  "2 lb",
  "3 lb",
  "4 lb",
  "5 lb",
  "6 lb"
]

ingredients.each do |ingredient|
  Ingredient.create ({
    name: ingredient
    })
end


5.times do
  brewery = Brewery.new({
    name: Faker::Company.name,
    location: Faker::Address.city,
    description: Faker::Lorem.sentence(4).to_s
    })


  beers = []

  3.times do
    beer = Beer.create({
      name: Faker::Lorem.words(1).join(""),
      style: Faker::Lorem.characters(3).to_s,
      description: Faker::Lorem.sentence(2).to_s,
      })

    random_ingredients = Ingredient.all
    3.times do
      ingredient_name = random_ingredients.to_a.pop.name
      random_amount = amounts.sample

      #make this method in beer model
      beer.add_quantity(
        random_amount,
        ingredient_name
        )
    end
    beer.save
    #adding beer to beers array
    beers << beer
  end

  # Saves 5 beers each to a brewery
  beers.each do |beer|
    brewery.beers << beer
  end

brewery.save!
end
