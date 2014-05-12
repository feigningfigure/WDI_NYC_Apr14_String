class PlanetsController < ApplicationController

	def index

		@planets = Planet.all

	end

	def new

		@planet = Planet.new

	end

	def create

		new_planet_attributes = params[:planet]

		Planet.create ({
			name: new_planet_attributes[:name],
			image_url: new_planet_attributes[:image_url],
			diameter: new_planet_attributes[:diameter],
			mass: new_planet_attributes[:mass],
			life: new_planet_attributes[:life]	
			})

		redirect_to planets_path

	end

	def show
		planet_id = params[:id]

		@planet = Planet.find(planet_id)

	end


end
