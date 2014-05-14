class GamesController < ApplicationController

	def create

		Game.create(game_attributes)

		redirect_to "/studios/#{game_attributes[:studio_id]}"

	end

	def show
		@game = Game.find(params[:id])

		@player = Player.new

	end

	def edit

		@game = Game.find(params[:id])

	end

	def update
		game = Game.find(params[:id])

		game.update_attributes(game_attributes)

		redirect_to "/studios/#{game.studio.id}"

	end


	private

	def game_attributes

		params.require(:game).permit(:title, :genre, :studio_id)

	end

end