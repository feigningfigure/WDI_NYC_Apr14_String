class RecipesController < ApplicationController

  def create

    Recipe.create(recipes_attributes)

    redirect_to root_path
  end

  private

  # ??????

end
