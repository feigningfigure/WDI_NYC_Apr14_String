# blow up database each time
Cookbook.delete_all
Recipe.delete_all
Chef.delete_all

# temporary chefs array
chefs = []
10.times do
  # create a chef and shovel them onto temp array
  chefs << Chef.create({
    name: Faker::Name.name,
    bio: Faker::Lorem.paragraphs(2).join("")
    })
end

ingredients = [
  "eggs",
  "water",
  "noodles",
  "bread",
  "tomato sauce",
  "bacon"
]

unit_names = [
  "grams",
  "buckets",
  "mouthfuls",
  "gallons",
  "dollop",
  "slices",
  "gigabytes"
]

ingredients.each do |ingredient_name|
  Ingredient.create({
    name: ingredient_name
    })
end


10.times do

  cookbook = Cookbook.new({
    title: Faker::Lorem.sentence(3).to_s,
    description: Faker::Lorem.paragraphs(2).join("")
    })

  # empty array of recipes
  recipes = []

  # make 10 random recipes
  5.times do
    #add each of those 10 recipes to the array of recipes
    recipe = Recipe.create({
      title: Faker::Lorem.sentence(3).to_s,
      content: Faker::Lorem.paragraphs(2).join("")
      })

    # add three random ingredients to our recipe
    random_ingredients = Ingredient.all
    3.times do
      valid_ingredient_name = random_ingredients.to_a.pop.name
      random_quantity = rand(1..100)
      # using a custom Model Method called .add_portion
      recipe.add_portion(
        random_quantity,
        unit_names.sample,
        valid_ingredient_name
        )
    end

    recipe.save

    # add new recipe to array
    recipes << recipe
  end

  # add each recipes from the array to my cookbook
  recipes.each do |recipe|
    # use .recipes to attach recipes
    cookbook.recipes << recipe
  end

  # assigns a random chef to the new book
  cookbook.chef = chefs.sample

  # save the newly created cookbook
  cookbook.save!

end
