class MoonsController < ApplicationController

def new
  @moon = Moon.new
end 

def create
	moon_attributes = params[:moon]

	Moon.create({
		name: moon_attributes[:name],
		planet_id: moon_attributes[:planet_id]
		})

	redirect_to '/planets/#{moon_attributes[:planet_id]}/moons'
end

def show
	moon = Moon.find(params[:id])
	p_id = moon.planet.id
	@moons = Moon.where(planet_id: p_id)
	
end

	
end
