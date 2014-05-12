class RecipesController < ApplicationController

  def create
    stuff = Recipe.create(recipes_attributes)

    render json: {
      strong_params: recipes_attributes,
     cookbook_id: params[:id]

    }


    # redirect_to cookbooks_path
  end

  private

    def recipes_attributes

      params.require(:recipe).permit(:title, :content, :cookbook_id)
      # ??????
    end

end
