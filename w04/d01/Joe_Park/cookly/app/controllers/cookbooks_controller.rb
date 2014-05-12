class CookbooksController < ApplicationController

	def index
		@cookbooks = Cookbook.all
		# render json: @cookbooks
	end

	
	def show
		# define @cookbook
		@cookbook = Cookbook.find(params[:id])


	end


end