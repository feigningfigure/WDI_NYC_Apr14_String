class AnimalsController < ApplicationController
	layout 'application'

	def index
		@animals = Animal.all
	end

	def newer
		
	end

	def new
		@id = params[:id].to_i
	end

	def show

	end

	def update

	end

	def edit
		id = params[:id]
		hash = {
			'name' => params[:name],
			'vertebrae_id' => params[:vertebrae_id],
			'characteristics' => params[:characteristics],
		}
		Animal.edit_animal(hash,id)
		redirect_to '/animals'
	end


	def create
		hash = {
			'name' => params[:name],
			'vertebrae_id' => params[:vertebrae_id],
			'characteristics' => params[:characteristics],
		}
		Animal.save_animal(hash)
		redirect_to '/animals'
	end

	def delete
		id = params[:id]
		Animal.delete(id)
		redirect_to '/animals'
	end


end
