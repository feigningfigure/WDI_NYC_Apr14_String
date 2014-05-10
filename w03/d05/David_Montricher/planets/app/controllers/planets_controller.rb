class PlanetsController < ApplicationController

  def index
    #Display a list of all planets
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
      name: planet_attributes[:name]
      })
  end

  def show
    # Display a specific planet
    @planet = Planet.id
    render :show
  end


end
