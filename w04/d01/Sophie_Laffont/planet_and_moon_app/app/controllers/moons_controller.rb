class MoonsController  < ActionController::Base


def index
		@moons = Planet.all
	end

def new
		@moon =Moon.new
	end
		
def create


	new_moon = params[:moon]

	Moon.create({
			name: new_moon[:name],
			image_url: new_moon[:image_url],
			diameter: moon[:diameter],
			mass: moon[:mass],
			life: moon[:life],	
			planet_id: moon[:planet_id]
		})
	end

	def show
		moon_id = params[:id]
		@moon = Moon.find(planet_id)
	end
end