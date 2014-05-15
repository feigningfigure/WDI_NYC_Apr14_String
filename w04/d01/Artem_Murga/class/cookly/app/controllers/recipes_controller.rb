class RecipesController < ApplicationController

  def create

    Recipe.create(recipes_attributes)

    redirect_to root_path
  end

  private

  def recipes_attributes

  	params.require(:recipe).permit(:title, :content)

  # ??????

end
