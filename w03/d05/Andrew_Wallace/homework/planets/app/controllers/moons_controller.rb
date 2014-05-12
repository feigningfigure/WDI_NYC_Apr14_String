class MoonsController < ApplicationController

layout "application"

  def index

  end

  def all
    @moons = Moon.all
  end

  def new
    @moon = Moon.new
  end

  def create
    moon_attributes = params[:moon]

    Moon.create({
      name: moon_attributes[:name],
      image_url: moon_attributes[:image_url],
      diameter: moon_attributes[:diameter],
      mass: moon_attributes[:mass],
      life: moon_attributes[:life],
      planet_id: moon_attributes[:planet_id]
      })

    redirect_to moons_path
  end

  def show
    moon_id = params[:id]
    @moon = Moon.find(moon_id)
  end

end
