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

private
  def penguin_params
    params.require(:penguin).permit(:name)
  end

end
