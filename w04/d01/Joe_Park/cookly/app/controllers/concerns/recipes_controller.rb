class RecipesController < ApplicationController

	def create

		Recipe.create(recipe_attributes)



		redirect_to root_path
	end

	private

	def recipe_attributes
		# recipe is the name of the hash that input is being put in
		params.require(:recipe).permit(:title, :content, :cookbook_id)

	end




end