class Apartment
	
	attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

	def initialize
		@price = 0
		@sqft = 0
		@num_beds = 0
		@num_baths = 0
		@renters = []
	end

	def renters
		

	def to_s
		puts "the apartments costs $#{@price}/month, is #{@sqft} sq ft, has #{@num_beds} beds, #{@num_baths} and #{@renters}"
		if @is_occupied
			puts the "apartment is occupied"
		else
			puts the "aparment is available"
		end
	end
end