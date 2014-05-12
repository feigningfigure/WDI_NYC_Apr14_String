class PlanetsController < ActionController::Base

	  layout 'application'

	def index
		@planets = Planet.all
	end

	def new

	end

	def show

	end

	def update

	end

	def edit
		id = params[:id]
		hash = {
			'name' => params[:name],
			'photo' => params[:photo],
			'diameter' => params[:diameter],
			'mass' => params[:mass],
			'life' => params[:life]
		}
		Planet.edit_planet(hash,id)
		redirect_to '/planets'
	end


	def create
		hash = {
			'name' => params[:name],
			'photo' => params[:photo],
			'diameter' => params[:diameter],
			'mass' => params[:mass],
			'life' => params[:life]
		}
		Planet.save_planet(hash)
		redirect_to '/planets'
	end

	def delete
		id = params[:id]
		Planet.delete(id)
		redirect_to '/planets'
	end


end

