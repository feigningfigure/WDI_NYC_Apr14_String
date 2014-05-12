class CookbooksController < ApplicationController

  def index
    @cookbooks = Cookbook.all
    # render json: @cookbooks
  end

  def show
    # by default...
    # render :name_of_this_method

    # define @cookbook
    @cookbook = Cookbook.find(params[:id])
    # @recipes = @cookbook.recipes
    # binding.pry
  end

end
