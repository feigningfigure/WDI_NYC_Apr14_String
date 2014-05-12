class MoonsController < ActionController::Base

	  layout 'application'

	def index
		@moons = Moons.all
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
			'planet_id' => params[:planet_id],
			'diameter' => params[:diameter],
			'mass' => params[:mass],
			'life' => params[:life]
		}
		Moons.edit_moon(hash,id)
		redirect_to '/moons'
	end


	def create
		hash = {
			'name' => params[:name],
			'planet_id' => params[:planet_id],
			'diameter' => params[:diameter],
			'mass' => params[:mass],
			'life' => params[:life]
		}
		Moons.save_moon(hash)
		redirect_to '/moons'
	end

	def delete
		id = params[:id]
		Moons.delete(id)
		redirect_to '/moons'
	end


end