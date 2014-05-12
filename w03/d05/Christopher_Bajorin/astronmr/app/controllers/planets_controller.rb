class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
    render :index
  end

  def new
    @new_planet = Planet.new
  end

  def create
    new_planet = params[:planet]
    Planet.create({
      name: new_planet[:name],
      image_url: new_planet[:image_url],
      diameter: new_planet[:diameter],
      mass: new_planet[:mass],
      life: new_planet[:life]
      })

    redirect_to '/planets'
  end


  def show
    @planet = Planet.find(params[:id])
  end

  def edit
    @update_planet = Planet.find(params[:id])
  end

  def update
    binding.pry
  end

  def delete
    Planet.delete(params[:id])
    redirect_to '/planets'
  end


end
