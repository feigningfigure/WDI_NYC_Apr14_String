#only classes are .to_s
class Building
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments 

	def initialize(address, style, has_doorman, is_walkup, num_floors)#just params, not array
		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartments = []
	end

	def to_s
		"This building is located at #{@address}.\n"
		"It is a #{@style}.\n"
		"The building #{@has_doorman}.\n"
		"The building #{@is_walkup}.\n"
		"There are #{@num_floors}.\n"
		"The apartment has #{@apartments.length}."
	end

end

# jane = Building.new("32 west", "colonial", false, true, "4")

# puts jane.apartments