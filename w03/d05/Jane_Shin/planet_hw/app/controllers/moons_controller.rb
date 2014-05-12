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
	# @planet_id = params[:planet_id]
	# @moons = Moon.where(planet_id: params[:planet_id])
	# x = 0
	# @moon_names = []
	# until x = moons.length do
	# 	@moon_names << moons[x].name
 # 		x +=1
 # 	end
	@moon = Moon.where(planet_id: params[:planet_id])
end

	
end
