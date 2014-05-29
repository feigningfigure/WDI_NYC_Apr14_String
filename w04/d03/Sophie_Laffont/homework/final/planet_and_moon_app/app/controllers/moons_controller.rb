class MoonsController  < ActionController::Base

	def new
		@moon = Moon.new
		@planet_id = params[:id]
	end

	def create
		new_moon = params[:moon]
		Moon.create({name: new_moon[:name], planet_id: params[:id]})

		redirect_to "/planets/#{params[:id]}"
	end

end