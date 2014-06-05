

Scene.delete_all
Dialogue.delete_all




100.times do

  scene = Scene.new({
    title: Faker::Lorem.sentence(3).to_s,
    heading: Faker::Lorem.sentence(3).to_s
    })


  dialogues = []


  10.times do

    dialogues << Dialogue.create({
      character: Faker::Name.name,
      content: Faker::Lorem.paragraphs(2).join("")
      })
  end

 
  dialogues.each do |dialogue|

    scene.dialogues << dialogue
  end


  scene.save!

end


# # blow up database each time
# Acts.delete_all
# Scene.delete_all
# # Dialogue.delete_all
# # Character.delete_all

# characters = [
#   "Amar DeLacasa"
#   "Den"
#   "Jason Wang"
#   "Principal Norillo"
#   "Cara Nadler"
#   "Destiny Montana"
# ]


# characters.each do |character_name|
#   Character.create({
#     name: character_name
#     })
# end



# # temporary chefs array
# chefs = []
# 10.times do
#   # create a chef and shovel them onto temp array
#   chefs << Chef.create({
#     name: Faker::Name.name,
#     bio: Faker::Lorem.paragraphs(2).join("")
#     })
# end

# ingredients = [
#   "eggs",
#   "water",
#   "noodles",
#   "bread",
#   "tomato sauce",
#   "bacon"
# ]

# unit_names = [
#   "grams",
#   "buckets",
#   "mouthfuls",
#   "gallons",
#   "dollop",
#   "slices",
#   "gigabytes"
# ]

# ingredients.each do |ingredient_name|
#   Ingredient.create({
#     name: ingredient_name
#     })
# end


# 100.times do

#   cookbook = Cookbook.new({
#     title: Faker::Lorem.sentence(3).to_s,
#     description: Faker::Lorem.paragraphs(2).join("")
#     })

#   # empty array of recipes
#   recipes = []

#   # make 10 random recipes
#   10.times do
#     #add each of those 10 recipes to the array of recipes
#     recipe = Recipe.create({
#       title: Faker::Lorem.sentence(3).to_s,
#       content: Faker::Lorem.paragraphs(2).join("")
#       })

#     # add three random ingredients to our recipe
#     random_ingredients = Ingredient.all
#     3.times do
#       valid_ingredient_name = random_ingredients.to_a.pop.name
#       random_quantity = rand(1..100)
#       # using a custom Model Method called .add_portion
#       recipe.add_portion(
#         random_quantity,
#         unit_names.sample,
#         valid_ingredient_name
#         )
#     end

#     recipe.save

#     # add new recipe to array
#     recipes << recipe
#   end

#   # add each recipes from the array to my cookbook
#   recipes.each do |recipe|
#     # use .recipes to attach recipes
#     cookbook.recipes << recipe
#   end

#   # assigns a random chef to the new book
#   cookbook.chef = chefs.sample

#   # save the newly created cookbook
#   cookbook.save!

# end
