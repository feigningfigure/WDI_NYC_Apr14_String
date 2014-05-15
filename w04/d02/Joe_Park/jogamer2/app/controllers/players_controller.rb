class PlayersController < ApplicationController

	def show
		@player = Player.find(params[:id])
	end


	def create

		Player.create(player_attributes)

		redirect_to "/games/"
	end


	private

	def player_attributes

		params.require(:player).permit(:name, :email)

	end

end