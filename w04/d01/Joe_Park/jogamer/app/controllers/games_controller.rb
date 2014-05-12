class GamesController < ApplicationController

	def create

		Game.create(game_attributes)

		redirect_to root_path

	end



	private

	def game_attributes

		params.require(:game).permit(:title, :genre, :studio_id)

	end

end