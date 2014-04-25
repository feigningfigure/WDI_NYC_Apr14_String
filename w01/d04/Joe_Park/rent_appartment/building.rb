require 'rainbow'

class Building

	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

	def initialize (address, style, has_doorman, is_walkup, num_floors)
		@address = address
		@style = style
		@has_doorman = false
		@is_walkup = false
		@num_floors = num_floors
		@apartments = []
	end

	def to_s
		"This building is located at #{@address}.\n"
		"It is a #{@style}.\n"
		"Does the building have a doorman? #{@has_doorman}.\n"
		"Is the building a walkup? #{@is_walkup}.\n"
		"There are #{@num_floors}.\n"
		"The building has #{@apartments.length}."

	# def doorman_indicator	
	# 	if @has_doorman == true
	# 		"has a doorman"
	# 	else
	# 		"has no doorman"
	# 	end
	# end		

end

