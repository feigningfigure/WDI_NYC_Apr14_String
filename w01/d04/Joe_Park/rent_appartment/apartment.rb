require 'rainbow'

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
		"This apartment is priced at #{@price}\n"
		"Is this apartment available? #{@is_occcupied}\n"
		"Ihe apartment is #{@sqft}.\n"
		"It has #{@num_beds} beds.\n"
		"There are #{@num_baths}.\n"
		"There are currently #{@renters.length} renters."
	end

end

apartment119 = Apartment.new(5000, true, 400, 7, 2).to_s