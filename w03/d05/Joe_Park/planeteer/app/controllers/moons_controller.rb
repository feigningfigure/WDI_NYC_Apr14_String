class MoonsController < ApplicationController

	def new
		@moon = Moon.new

	end

	def create
		moon_attributes = params[:moon]

		Moon.create({
			name: moon_attributes[:name],
			image_url: moon_attributes[:image_url],
			planet_id: Planet.find(moon_attributes[:planet_id]).id
		})

		redirect_to planets_path
	end

	# def show
	# 	planet_id = params[:id]
	# 	@all_moons = Moon.all
	# 	@moons = @all_moons.find[planet_id]

	# end


end


# if moon's planet_id is the same as @planet.id then display