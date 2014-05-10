class PlanetsController < ApplicationController
  def index
    @planet = Planet.new
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def create
    # render :text => params.inspect
    @planet = Planet.new(planet_params)
    @planet.save
    redirect_to :action => "index"
  end

  private
   def planet_params
      params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
    end
end
