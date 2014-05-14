class IceCreamFlavorsController < ApplicationController

  def index
	@ice_cream_flavors = IceCreamFlavor.all
    # render json: @ice_cream_flavors
  end

  def show
  	@ice_cream_flavors = IceCreamFlavor.find(params[:id])
  	# @toppings = Topping.new
  end

end
