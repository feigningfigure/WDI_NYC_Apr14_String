class PlanetsController < ApplicationController

def index
  @planets = Planet.all
  render :index
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
#modeling on crayons, should send back to all crayons page
   redirect_to planets_path
end

def show
  # render :show
    # planet_id = [:params][:id]to_i
    # @planet = Planet.id
    # redirect_to planets_show_path
end

end
