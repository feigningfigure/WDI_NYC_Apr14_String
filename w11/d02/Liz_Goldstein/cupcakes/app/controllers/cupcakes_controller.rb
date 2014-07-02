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

  def destroy
    cupcake = Cupcake.find(params[:id])
    cupcake.destroy
    respond_with cupcake
  end

  def update
    cupcake = Cupcake.find(params[:id])
    cupcake.update(cupcake_params)
    respond_with cupcake
  end

  private

  def cupcake_params
    params.require(:cupcake).permit(:name)
  end

end


