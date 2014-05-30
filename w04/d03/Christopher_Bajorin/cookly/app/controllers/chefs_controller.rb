class ChefsController < ApplicationController

  def index
    # show me all the chefs
    @chefs = Chef.all
    # render :index
  end

  def show
    # show me one chef
    @chef = Chef.find(params[:id])
    # render json: @chef
  end

end
