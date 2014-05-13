class RecipesController < ApplicationController

  def create
    cookbook_id = params[:id]
    Recipe.create(recipe_attributes)
    redirect_to "/cookbooks/#{recipe_attributes[:cookbook_id]}"
  end

  private

  def recipe_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:recipe).permit(:title, :content, :cookbook_id)
  end


end
