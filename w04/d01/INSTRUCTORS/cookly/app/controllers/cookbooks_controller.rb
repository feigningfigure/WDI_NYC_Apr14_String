class CookbooksController < ApplicationController

  def index
<<<<<<< HEAD
    @cookbooks = Cookbook.all
    # render json: @cookbooks
  end

=======
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

    render json: {
      strong_params: cookbook_attributes
    }


    # when done...
    redirect_to cookbooks_path
  end

  def edit
    @cookbook = Cookbook.find(params[:id])
    # render json: @cookbook
    render partial: "cookbookform", locals: { cookbook_local: @cookbook }
  end

   def update

    cookbook = Cookbook.find(params[:id])

    cookbook.update_attributes(cookbook_attributes)

    # render json: cookbook
    redirect_to "/cookbooks/#{params[:id]}"
  end

  private

  # strong params
  def cookbook_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:cookbook).permit(:title, :description)
  end

>>>>>>> 37ba2b78ffaa8dbf8b9ab3dfccea0af6c5b7733f
end
