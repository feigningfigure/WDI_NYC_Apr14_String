class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
    render :index
  end

  def new
    @planet = Planet.new
  end

  def show


    render :show
  end


end
