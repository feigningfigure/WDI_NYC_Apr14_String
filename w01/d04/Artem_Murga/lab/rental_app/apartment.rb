class Apartment
	attr_reader :sqft, :num_beds, :num_baths
	attr_accessor :price, :is_occupied, :renters
	def initialize(price, is_occupied, sqft, num_beds, num_baths)
		@price = price
		@is_occupied = is_occupied
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		@renters = []
	end

	def to_s
		puts "This apartment cost #{price} per month, it's #{is_occupied} that it's occupied, has #{sqft}, has #{num_beds}, has #{num_baths} and the following renters: #{renters}"
	end

	#need to figure out about multiply renters
	def renter
		p "You will have #{price} from #{renters[0].name}"
	end
end