class MoonsController < ApplicationController

  def index
    # @moons = Moon.all
    @moon = Planet.find(params[:order_id])
  end


  def new
    @moon = Moon.new
  end

  def create

    moon_attributes = params[:moon]

    Moon.create({
        name: moon_attributes[:name],
        image_url: moon_attributes[:image_url],
        planet_id: moon_attributes[:planet_id]
      })

    redirect_to "/planets"
  end

  def show
    # @moon = Moon.find_by_planet_id(params[:planet_id])
    # planet_id = params[:id]
     @moon = Moon.where(planet_id: params[:planet_id])
  end


end
