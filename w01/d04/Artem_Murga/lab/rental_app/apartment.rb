class Apartment
	def initialize(price, is_occupied, sqft, num_beds, num_baths)
		@price = price
		@is_occupied = is_occupied
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		@renters = []
	end
end