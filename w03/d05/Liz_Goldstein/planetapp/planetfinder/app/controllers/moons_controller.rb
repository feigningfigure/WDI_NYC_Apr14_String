class MoonsController < ApplicationController

def index
  @moons = Moon.all
  render :index
end

def new
  @moon = Moon.new
end

def create
    moon_attributes = params[:moon]

    Moon.create({
    name: moon_attributes[:name],
    planet_id: moon_attributes[:planet_id]
  })

   redirect_to planets_path
end


end
