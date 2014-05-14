Studio.delete_all
Game.delete_all
Player.delete_all

# joe = Player.create({
# 	name: Joe,
# 	email: asdf@aol.com
# 	})
# game1 = Game.create({
# 	title: blah,
# 	genre: blah2
# 	studio_id: asdasd
# 	})

# group1 = Group.create({
# 	game_id: game1.id
# 	player_id: player.id
# 	})

players = []
100.times do
  # create a player and shovel them onto temp array
  players << Player.create({
    name: Faker::Name.name,
    email: Faker::Internet.email
    })
end


5.times do 
	studio = Studio.new({

		name: Faker::Company.name,
		description: Faker::Company.bs,
		location: Faker::Address.state
	
	})

	games = []

	5.times do
		game = Game.create({
			title: Faker::Commerce.product_name,
			genre: Faker::Lorem.word
		})

		
		3.times do
			game_player = players.pop

			game.add_group(
				game_player.id
			)
		end

		game.save

		games << game

	end

	games.each do |game|
		studio.games << game
	end

	studio.save!

end