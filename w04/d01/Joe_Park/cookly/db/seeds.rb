# blow up database each time
Cookbook.delete_all
Recipe.delete_all


100.times do 
	
	cookbook = Cookbook.create({
		title: Faker::Lorem.sentence(3),
		description: Faker::Lorem.paragraphs(2).join("")
	})

	# empty array of recipes
	recipes = []

	10.times do 
	# add those 10 recipes to the array of recipes
	recipes << Recipe.create({
		title: Faker::Lorem.sentence(3),
		content: Faker::Lorem.paragraphs(2).join("")
	})

	end

	# add each recipes from the array to my cookbook
	recipes.each do |recipe|
		cookbook.recipes << recipe
	end
	
	# save the newly created cookbook
	cookbook.save!

end