class MakesController < ApplicationController

	def index
		@makes = Make.order(id: :asc)
		
	end

	def show
	    @make = Make.find(params[:id])
	    @make_create = Make.new
		
	end


	def create
		
	end

	def new
		Make.create(make_attributes)
		# render json: {
		# 	strong_params: make_attributes
		# }
		redirect_to root
	end

	# def new

	# end


	private 

	def make_attributes
	params.require(:make).permit(:name, :country)
	end

end

