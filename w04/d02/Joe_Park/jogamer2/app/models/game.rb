class Game < ActiveRecord::Base
	belongs_to :studio

	has_many :players, through: :groups

	has_many :groups


	def add_group(game_player)
		player = Player.find(game_player)

		if player
			self.groups << Group.create({
				player: player
			})
		else
			puts "SCREW YOU!"
			nil
		end
	end
end