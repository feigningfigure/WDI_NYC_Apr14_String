class AnimalsController < ApplicationController
	layout 'application'

	def create
		Animal.create(animal_attributes)


		redirect_to animals_path
	end
	
	def edit
		@animal = Animal.find(params[:id])
		render partial: "animalform", locals: {animal_local: @animal}
	end

	def update
		animal = Animal.find(params[:id])
		animal.update_attributes(animal_attributes)
		redirect_to "/animals"
	end

	def show
		@animal = Animal.find(params[:id])
	end

	def index
		@animals = Animal.all

		@animal = Animal.new
	end

	def newer
		
	end

	def new
		@animal = Animal.new
	end



	def delete
		id = params[:id]
		Animal.delete(id)
		redirect_to '/animals'
	end

	def animal_attributes
		params.require(:animal).permit(:name, :scientific_name, :characteristics)
	end


end
