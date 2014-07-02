class PenguinsController < ApplicationController

  respond_to :json

  def index
    penguins = Penguin.all
    respond_with penguins
  end

  def create
    penguin = Penguin.create(penguin_params)
    respond_with penguin
  end

  def destroy
    penguin = Penguin.find(params[:id])
    penguin.destroy
    respond_with penguin
  end

  def update
    penguin = Penguin.find(params[:id])
    penguin.update(penguin_params)
    respond_with penguin
  end


  private

  def penguin_params
    params.require(:penguin).permit(:name)
  end

end
