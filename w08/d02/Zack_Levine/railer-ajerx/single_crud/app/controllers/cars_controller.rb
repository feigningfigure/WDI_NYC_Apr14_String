class CarsController < ApplicationController

	def index
		@cars = Car.all
	end

	def create
		Car.create(car_attributes)			
	end	

	def update
		@car.update(params[:car_params])	
	end

	def show
		car = car.find(params[:id])
	end

	def destroy
		 #finds the car by id number in db to delete
		 car = Car.find(params[:id])
		 car.destroy
		 redirect_to(:action => 'index')

		end

		private
		def car_attributes
		#whited
		params.require(:car).permit(:year, :make, :model, :color)
	end

	
end
