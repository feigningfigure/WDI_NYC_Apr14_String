class RecipesController < ApplicationController

  def create
    Recipe.create(recipes_attributes)

    # render json: {
    #   strong_params: recipes_attributes

    # }


    redirect_to cookbooks_path
  end

  private

    def recipes_attributes

      params.require(:recipe).permit(:title, :content, :cookbook_id)
      # ??????
    end

end
