class Crapp < ActiveRecord::Base

respond_to :json

	def index 
		crapp = Crapp.all
		respond_with :crapp 
	end


	def create 
		crapp = Crapp.create(crapp_params)
		respond_with :crapp
	end


	private 

	def crapp_params
		params.require(:crapp).permit(:description :status)
	end
end
