class CookbooksController < ApplicationController

	def index
		@cookbooks = Cookbook.order(id: :desc)
		# render json: @cookbooks

		# new instance of cookbook for the form helper
		@cookbook = Cookbook.new
	end

	
	def show
		# define @cookbook
		@cookbook = Cookbook.find(params[:id])

		# makes the form work
		@recipe = Recipe.new

	end

	def create

		# cookbook_attributes = params[:cookbook]

		Cookbook.create(cookbook_attributes)

		# render json: {
		# 	strong_params: cookbook_attributes
		# }
		# when done...
		# redirect_to cookbooks_path
	end

	def edit

		@cookbook = Cookbook.find(params[:id])

		# cookbook: is a local variable name...could have called it superman as long as it was superman: @cookbook
		render partial: "cookbookform", locals: { cookbook_local: @cookbook }

	end

	def update

		cookbook = Cookbook.find(params[:id])

		cookbook.update_attributes(cookbook_attributes)

		redirect_to "/cookbooks/#{params[:id]}"
	end

	private

	# strong params
	def cookbook_attributes
		# whitelisting parts of the params hash, that are DB-safe
		params.require(:cookbook).permit(:title, :description)
	end


end