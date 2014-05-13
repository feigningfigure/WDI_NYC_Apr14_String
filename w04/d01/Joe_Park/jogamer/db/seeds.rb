Studio.delete_all
Game.delete_all


100.times do 
	studio = Studio.create({

		name: Faker::Company.name,
		description: Faker::Company.bs,
		location: Faker::Address.state
	
	})

	games = []

	10.times do
		games << Game.create({
			title: Faker::Commerce.product_name,
			genre: Faker::Lorem.word

		})

	end

	games.each do |game|
		studio.games << game
	end

	studio.save!

end