class Apartment

	attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

	def initialize(price, is_occupied, sqft, num_beds, num_baths)
		@price = price
		@is_occupied = is_occupied
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		@renters = []
	end


	def to_s
		"Price: $#{@price}"
		"Available: #{@is_occcupied}"
		"Sq fottage: #{@sqft}."
		"Bedroom/s:#{@num_beds}"
		"Bathroom/s:#{@num_baths}"
		"Current renters: #{@renters.length}"
	end

end
