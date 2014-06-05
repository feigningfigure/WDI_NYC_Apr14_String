class GladiatorsController < ApplicationController

	def show
		@gladiators = Gladiator.order(victory_count: :desc)
	end

end