class Building

	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

	def initialize(address,style,has_doorman,is_walkup,num_floors,apartments)
		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartments = apartments
	end

	def building_features
		"This lovely building is #{@address}\n"
		"It is a #{@style} style model\n"
		if @has_doorman == true
		"This building has a doorman\n"
		end
		if @is_walkup == true
		"The building is a walkup\n"
		end
		"It has #{@num_floors} floors and #{@apartments} apartments.\n"
	end
end