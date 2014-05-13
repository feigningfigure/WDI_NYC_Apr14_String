class RecipesController < ApplicationController

  def create

    Recipe.create(recipe_attributes)

    redirect_to '/'
  end

  private

  def recipe_attributes

  params.require(:recipe).permit(:title, :content, :cookbook_id)

  end

end
