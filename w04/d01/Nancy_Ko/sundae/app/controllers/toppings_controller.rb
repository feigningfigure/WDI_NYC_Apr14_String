class ToppingsController < ApplicationController

	def index
		@toppings = Topping.all
	end

	def show
	  @toppings = Topping.find(params[:name])
	end

end
