class PlanetsController < ApplicationController

  def index
    @planet = Planet.new
    @moon = Moon.new
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

   def new_moon
    @moon = Moon.new
    @planet_id = params[:id]
  end

  def create
     # render :text => params.inspect
    if params[:planet_id].nil?
      @planet = Planet.new(planet_params)
      @planet.save
      redirect_to :action => "index"
    else
      @planet = params[:planet_id]
      @moon = Moon.new(moon_params)
      @moon.save
      redirect_to :action => "index"
    end
  end

  def create_moon
    @planet = params[:planet_id]
    @moon = Moon.new(moon_params)
    @moon.save
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

  def destroy_moon
    @moon = Moon.find(params[:id])
    @moon.destroy
    redirect_to :back, :notice => 'Moon has been destroyed.'
  end

  private

   def planet_params
      params.require(:planet).permit(:name, :image_url, :diameter, :mass, :life) if params[:planet]
    end

    def moon_params
      params.require(:moon).permit(:planet_id, :name, :image_url, :diameter, :life)
    end
end
