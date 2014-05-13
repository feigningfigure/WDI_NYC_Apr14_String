class PlayersController < ApplicationController


	def create
		Player.create(new_player_attributes)
		# player = Player.create(new_player_attributes)
		#team_id = player.team_id
		redirect_to "/teams/#{new_player_attributes[:team_id]}"
	end

private
	  # strong params
	def new_player_attributes
	    # whitelisting parts of the params hash, that are DB-safe
	   params.require(:player).permit(:name, :height, :college, :team_id)
	end


end