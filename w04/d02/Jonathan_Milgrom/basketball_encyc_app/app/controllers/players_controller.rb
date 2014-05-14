class PlayersController < ApplicationController


	def create
		Player.create(new_player_attributes)
		# player = Player.create(new_player_attributes)
		#team_id = player.team_id
		redirect_to "/teams/#{new_player_attributes[:team_id]}"
	end

	def edit
		id = params[:id]
		@player = Player.find(id)
	end

	def update

    	player = Player.find(params[:id])

    	player.update_attributes(new_player_attributes)

 
    	redirect_to "/teams/#{new_player_attributes[:team_id]}"
  	
  	end

  	def delete
  		player = Player.find(params[:id])
  		team_id = player.team_id
  		player.destroy
  		redirect_to "/teams/#{team_id}"
  	end

private
	  # strong params
	def new_player_attributes
	    # whitelisting parts of the params hash, that are DB-safe
	   params.require(:player).permit(:name, :height, :college, :team_id)
	end


end