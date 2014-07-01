class PenguinsController < ApplicationController

  respond_to :json

  def index
    penguin = Penguin.all
    respond_with penguin
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

  private

  def penguin_params
    params.require(:penguin).permit(:name)
  end
end
