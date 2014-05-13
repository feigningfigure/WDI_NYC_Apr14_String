class RecipesController < ApplicationController

  def create

    Recipe.create(recipe_attributes)

    render json:  Recipe.create(recipe_attributes)
  end

  private

  # strong params
  def recipe_attributes
    # whitelisting parts of the params hash, that are DB-safe
    params.require(:recipe).permit(:title, :content)
  end

end
