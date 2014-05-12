class MoonsController < ApplicationController

	def index

	end

	def new

		@moon = Moon.new 
	end

end