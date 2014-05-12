class PlanetsController < ApplicationController

	def index

	end

	def new

		@planet = Planet.new 
	end

	def create

		planet_attributes = params[:planet]
		planet = Planet.create ({
			name: planet_attributes [:name],
			diameter: planet_attributes [:diameter],
			mass: planet_attributes [:mass],
			life: planet_attributes [:life],
			image_url: planet_attributes [:image_url]
			})
		# binding.pry
		redirect_to :action => "show", :id => planet.id
		# redirect_to '/planets/#{planet.id}'

	end


	def show

		planet_id = params[:id]

		@planet = Planet.find(planet_id)
	end

	def suchen	

	end

	def delete

		# skip_before_action :verify_authenticity_token
		planet_id = params[:id]


	end


end

