class CookbooksController < ApplicationController

  def index
    @cookbooks = Cookbook.all
    # render json: @cookbooks
  end

end
