class PlanetsController  < ActionController::Base

layout "application"

	def index
		@planets = Planet.all
	end

	def new
		@planet =Planet.new
	end

	def create
		new_planet = params[:planet]
			Planet.create({
				name: new_planet[:name],
				image_url: new_planet[:image_url],
				diameter: new_planet[:diameter],
				mass: new_planet[:mass],
				life: new_planet[:life],
				})
		redirect_to planets_path
	end

	def show
		planet_id = params[:id]
		@planet = Planet.find(planet_id)
		@moons = @planet.moons
	end

end