class Apartment
	
	attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

	def initialize
		@price = 0
		@sqft = 0
		@num_beds = 0
		@num_baths = 0
		@renters = []
	end
end