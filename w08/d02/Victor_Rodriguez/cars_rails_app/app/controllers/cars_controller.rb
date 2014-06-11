class CarsController < ApplicationController

	def index
	end

	def create
	end

	def show
	end

	def update 
	end

	def destroy
  @cars = Car.find(params[:id])
  @cars.destroy
 
  redirect_to cars_path
end
	end
end