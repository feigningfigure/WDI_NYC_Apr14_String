class RecipesController < ApplicationController

  def create

    Recipe.create(recipe_attributes)

    # render json: {
    #   strong_params: recipe_attributes
    # }


    redirect_to cookbooks_path
  end

  private

  ###########################

  def recipe_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:recipe).permit(:title, :content, :cookbook_id)
  end



end




