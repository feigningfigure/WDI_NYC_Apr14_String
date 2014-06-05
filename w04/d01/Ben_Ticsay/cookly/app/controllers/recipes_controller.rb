class RecipesController < ApplicationController

  def create

    Recipe.create(recipe_attributes)

    redirect_to "/cookbooks/#{recipe_attributes[:id]}"
  end

  private

  def recipe_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:recipes).permit(:title, :content)
  end

end
