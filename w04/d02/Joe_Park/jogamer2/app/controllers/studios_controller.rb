class StudiosController < ApplicationController

	def index

		@studios = Studio.all

		@studio = Studio.new

	end

	
	def show

		@studio = Studio.find(params[:id])

		@game = Game.new

	end


	def create

		Studio.create(studio_attributes)

		redirect_to studios_path

	end


	def edit
		@studio = Studio.find(params[:id])
		
	end

	def update
		studio = Studio.find(params[:id])
		studio.update_attributes(studio_attributes)

		redirect_to "/studios/#{studio.id}"

	end


	private

	def studio_attributes

		params.require(:studio).permit(:name, :description, :location)

	end


end