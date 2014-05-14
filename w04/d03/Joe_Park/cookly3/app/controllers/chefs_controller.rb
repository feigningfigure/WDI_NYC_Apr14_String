class ChefsController < ApplicationController

  # before filter :name_of_some_method
  before_action :authenticate_with_basic_auth


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
