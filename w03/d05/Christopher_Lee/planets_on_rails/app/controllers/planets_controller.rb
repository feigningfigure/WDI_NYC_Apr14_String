class PlanetsController < ApplicationController
  def index
    @planet = Planet.new
    @planets = Planet.all
  end

  def new
    @planet = Planet.new
  end

  def create
    render :text => params.inspect
    # @planet = Planet.new(planet_params)
    # @planet.save
    #  redirect_to :action => "index"
  end

   def task_params
      params.require(:task).permit(:task)
    end
end
