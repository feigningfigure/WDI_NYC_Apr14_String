class PlanetsController < ApplicationController

def index
	@planets = Planet.all
end

def new
	@planet = Planet.new
end

def create
	planet_attributes = params[:planet]

	Planet.create({
		name: planet_attributes[:name],
		image_url: planet_attributes[:image_url],
		diameter: planet_attributes[:diameter],
		mass: planet_attributes[:mass],
		life: planet_attributes[:life]
		})

	redirect_to planets_path
end

def show
	@planet = Planet.find(params[:id])
end

def delete
	@planet.find(params[:id]).delete
end

end