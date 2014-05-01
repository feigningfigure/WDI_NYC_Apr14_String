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
		"Address: #{@address}."
		"Style: #{@style}."
		"Doorman: #{@has_doorman}."
		"Walkup: #{@is_walkup}."
		"There are #{@num_floors}."
		"The building has #{@apartments.length}."

end

