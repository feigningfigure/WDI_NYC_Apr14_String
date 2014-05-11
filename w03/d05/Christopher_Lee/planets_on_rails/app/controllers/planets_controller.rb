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

  def edit
   @planet = Planet.find(params[:id])
  end

  def update
    planet = Planet.find params[:id]
    if planet.update(planet_params)
      redirect_to planets_path, :notice => 'Planet has sucessfully been updated.'
    else
      redirect_to :back, :notice => 'There was an error updating the planet.'
    end
  end

  def destroy
    @planet = Planet.find(params[:id])
    @planet.destroy
    redirect_to :back, :notice => 'Planet has been destroyed.'
  end

  private

   def planet_params
      params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life)
    end
end
