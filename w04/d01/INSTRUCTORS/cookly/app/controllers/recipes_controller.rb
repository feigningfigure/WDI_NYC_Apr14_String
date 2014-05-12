class RecipesController < ApplicationController

  def create

    Recipe.create(recipe_attributes)

    # render json: Recipe.create(recipe_attributes)
    redirect_to "/cookbooks/#{recipe_attributes[:cookbook_id]}"
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render partial: "recipeform", locals: { recipe_local: @recipe, cookbook_id: @recipe.cookbook.id }
  end

  def update
    recipe = Recipe.find(params[:id])

    recipe.update_attributes(recipe_attributes)

    redirect_to "/cookbooks/#{recipe.cookbook.id}"
    # render json: params
  end

  private

  def recipe_attributes
    params.require(:recipe).permit(:title, :content, :cookbook_id)
  end

end
