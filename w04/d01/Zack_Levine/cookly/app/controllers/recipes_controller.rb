class RecipesController < ApplicationController

  def create

    Recipe.create(recipe_attributes)

  render json: Recipe.create(recipe_attributes)
    #redirect_to root_path
  end

  private

  def recipe_attributes
    params.require(:recipe).permit(:title, :content, :cookbook_id)
    #recipie is the name of the has
    # permit is the name of they keys
  # ??????

end
end
