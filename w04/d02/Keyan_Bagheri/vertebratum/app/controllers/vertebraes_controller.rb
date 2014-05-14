class VertebraesController < ApplicationController
	  layout 'application'

	def index
		@vertebraes = Vertebrae.all

		@vertebrae = Vertebrae.new
	end

	def new
		@vertebrae = Vertebrae.new
	end

	def show
		@vertebrae = Vertebrae.find(params[:id])

		@animal = Animal.new
	end

	def create
		Vertebrae.create(vertebrae_attributes)


		redirect_to vertebraes_path

		# hash = {
		# 	'name' => params[:name],
		# 	'scientific_name' => params[:scientific_name],
		# 	'characteristics' => params[:characteristics],
		# }
		# Vertebrae.save_vertebrae(hash)
		# redirect_to '/vertebraes'
	end

	def edit
		@vertebrae = Vertebrae.find(params[:id])
		render partial: "vertebraeform", locals: {vertebrae_local: @vertebrae}
	end

	def update
		vertebrae = Vertebrae.find(params[:id])
		vertebrae.update_attributes(vertebrae_attributes)
		redirect_to "/vertebraes/#{params[:id]}"
		# id = params[:id]
		# hash = {
		# 	'name' => params[:name],
		# 	'scientific_name' => params[:scientific_name],
		# 	'characteristics' => params[:characteristics],
		# }
		# Vertebrae.edit_vertebrae(hash,id)
		# redirect_to '/vertebraes'
	end

	def delete
		id = params[:id]
		Vertebrae.delete(id)
		redirect_to '/vertebraes'
	end

	private

	def vertebrae_attributes
		params.require(:vertebrae).permit(:name, :scientific_name, :characteristics)
	end

end
