class PlantsController < ApplicationController

  respond_to :json

  def index
    plants = Plant.all
    respond_with plants
  end

  def create
    # binding.pry
    plant = Plant.create(plant_params)
    respond_with plant
  end

  private

  def plant_params
    require(:plant).permit(:name, :color)
  end
end
