class ModelController < ApplicationController

	def index
		@models = Model.order(id: :desc)
		#@model = Model.new
		
		render json: @models
	end

	def show
	    @model = Model.find(params[:id])
	    @model_create = Model.new
		
	end


	def create
		Model.create(model_attributes)
		redirect_to models_path 
	end

	def edit
		# binding.pry
		@model = Model.find(params[:id])
		# render json: @model
	end

	def update 
		model = Model.find(params[:id])
		model.update_attributes(model_attributes)
		redirect_to "/models/#{params[:id]}"
	end


	private 

	def model_attributes
	params.require(:model).permit(:name)
	end

end

