# blow up database each time
Cookbook.delete_all
Recipe.delete_all
Chef.delete_all

chefs = []
10.times do
  chefs << Chef.create({
    name: Faker::Name.name
    bio: Faker::Lorem.paragraphs(2).join("")
    })

end


100.times do

  cookbook = Cookbook.new({
    title: Faker::Lorem.sentence(3).to_s,
    description: Faker::Lorem.paragraphs(2).join("")
    })

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

  cookbook.chef = chefs.sample

  # save the newly created cookbook
  cookbook.save!

end
