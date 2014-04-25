class Apartment

	attr_accessor :is_occupied, :price, :sqft, :num_beds, :num_baths, :renters

	def initialize(is_occupied,price,sqft,num_beds,num_baths,renters)
		@is_occupied = is_occupied
		@price = price
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		@renters = renters
	end

	def apartment_features
		if is_occupied == true
		"This apartment is currently occupied by #{@renters}.\n"
		else
		"This apartment costs #{@price}.\n"
		"It is #{@sqft} square feet\n"
		"It has #{@num_beds} bedrooms\n"
		"It has #{@num_baths} bathrooms\n"
		end
	end
end