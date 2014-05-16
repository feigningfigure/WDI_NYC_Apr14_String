class ToppingsController < ApplicationController

	def index
		@toppings = Topping.all
	  	# render json: @toppings
	end

	def show
	  @toppings = Topping.find(params[:name])
	end

end
