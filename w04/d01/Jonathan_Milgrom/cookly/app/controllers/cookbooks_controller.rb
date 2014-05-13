class CookbooksController < ApplicationController

  def index
    @cookbooks = Cookbook.order(id: :desc)

    # new instance of cookbook for the form helper
    @cookbook = Cookbook.new
    # render json: @cookbooks
  end

  def show
    # by default...
    # render :name_of_this_method

    # define @cookbook
    @cookbook = Cookbook.find(params[:id])

    # makes the form work
    @recipe = Recipe.new

    # binding.pry
  end

  def create
    # add .create soon..

    # old way...
    # cookbook_attributes = params[:cookbook]

    # new way... *but requires private_method
    Cookbook.create(cookbook_attributes)

    # render json: {
    #   strong_params: cookbook_attributes
    # }


    # when done...
    redirect_to cookbooks_path
  end

  private

  # strong params
  def cookbook_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:cookbook).permit(:title, :description)
  end

end
