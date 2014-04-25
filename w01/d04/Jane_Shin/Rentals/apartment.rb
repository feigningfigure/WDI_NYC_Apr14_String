class Apartment
	attr_accessor :price, :is_occupied, :sqft, :num_bed, :num_baths, :renters

	def initialize (price, is_occupied, sqft, num_bed, num_baths)
		@price = price
		@is_occupied = is_occupied
		@sqft = sqft
		@num_bed = num_bed
		@num_baths = num_baths
		@renters = []
	end

	def to_s
		"It costs #{price} dollars to live here.\n"
		"It's #{is_occupied} that people live here.\n"
		"The apartment is #{sqft} sqft.\n"
		"There are #{num_bed} beds."
		"There are #{num_baths} baths.\n"
		"The tenant has #{@renters.length} forms of four filled out."
	end

end

# jill = Apartment.new("30", true, "40", "4", "5")

# jane.apartments << jill #added Apartment to Building