# blow up database each time
Cookbook.delete_all
<<<<<<< HEAD

100.times do

  Cookbook.create({
=======
Recipe.delete_all




100.times do

  cookbook = Cookbook.new({
>>>>>>> 37ba2b78ffaa8dbf8b9ab3dfccea0af6c5b7733f
    title: Faker::Lorem.sentence(3).to_s,
    description: Faker::Lorem.paragraphs(2).join("")
    })

<<<<<<< HEAD
=======
  # empty array of recipes
  recipes = []

  # make 10 random recipes
  10.times do
    #add each of those 10 recipes to the array of recipes
    recipes << Recipe.create({
      title: Faker::Lorem.sentence(3).to_s,
      content: Faker::Lorem.paragraphs(2).join("")
      })
  end

  # add each recipes from the array to my cookbook
  recipes.each do |recipe|
    # use .recipes to attach recipes
    cookbook.recipes << recipe
  end

  # save the newly created cookbook
  cookbook.save!

>>>>>>> 37ba2b78ffaa8dbf8b9ab3dfccea0af6c5b7733f
end
