class PlanetsController < ApplicationController

  def index
    #Display all planets from database
    @planets = Planet.all

    render :index
  end

  def new
    # Return form for creating a new planet
    planet = Planet.new
  end

  def create
    # Create a new planet
    planet_attributes = params[:planet]
    # Absolutely no mass assignment

    Planet.create({
      name: planet_attributes[:name],
      image_url: planet_attributes[:image_url],
      diameter: planet_attributes[:diameter],
      mass: planet_attributes[:mass],
      life: planet_attributes[:life]
      })

    # back to all crayons page
    redirect_to planets_path
  end

  def show
    # Display a specific planet
    @planet = Planet.id
    render :show
  end


end
