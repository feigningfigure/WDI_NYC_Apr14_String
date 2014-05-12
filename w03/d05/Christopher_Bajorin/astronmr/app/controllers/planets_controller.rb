class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
    render :index
  end

  def new
    @new_planet = Planet.new
  end

  def create

    Planet.create({
      name: params[:name],
      image_url: params[:image_url],
      diameter: params[:diameter],
      mass: params[:mass],
      life: params[:life]
      })

    redirect '/planets'
  end


  def show
    @planet = Planet.find(params[:id])

    # render :show
  end


end
