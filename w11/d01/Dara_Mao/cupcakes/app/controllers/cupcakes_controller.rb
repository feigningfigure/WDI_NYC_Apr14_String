class CupcakesController < ApplicationController

  respond_to :json

  def index
    cupcakes = Cupcake.all
    respond_with cupcakes
  end

  def create
    cupcake = Cupcake.create(cupcake_params)
    respond_with cupcake
  end

  private
  def cupcake_params
    params.require(:cupcake).permit(:flavor, :size, :unit)
  end
end
