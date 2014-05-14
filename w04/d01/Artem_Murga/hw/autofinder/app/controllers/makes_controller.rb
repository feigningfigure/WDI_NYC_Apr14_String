class MakesController < ApplicationController

	def index
		@makes = Make.order(id: :desc)
		@make = Make.new
		
		# render json: @makes
	end

	def show
	    @make = Make.find(params[:id])
	    @make_create = Make.new
		
	end


	def create
		Make.create(make_attributes)
		redirect_to makes_path 
	end

	def edit
		# binding.pry
		@make = Make.find(params[:id])
		# render json: @make
	end

	def update 
		make = Make.find(params[:id])
		make.update_attributes(make_attributes)
		redirect_to "/makes/#{params[:id]}"
	end


	private 

	def make_attributes
	params.require(:make).permit(:name, :country)
	end

end

