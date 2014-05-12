class PlanetsController < ApplicationController

  def index
    @planets = Planet.all
  end

  def new
    @planet = Planet.new # will make my f0rm wok
  end

  # This function creates planet
  def create
    # Form params instantiate a new object
    @planet = Planet.new(params.require(:subject).permit(:name, :image_url, :diameter, :mass, :life))
    # saves it
    if @subject.save
      # If save is successful
      redirect_to(:action => 'index')
    else
      # if it fails
      render('new')
    end
  end

  def show
    # grab id from url params
    @planet = Planet.find(params[:id])
  end

end




