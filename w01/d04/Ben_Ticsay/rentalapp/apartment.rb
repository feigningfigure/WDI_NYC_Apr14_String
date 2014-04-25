require_relative "person"


class Apartment

	attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters,


	def initialize(price, is_occupied, sqft, num_beds, num_baths, renters)


	apartment1
		@price = price
		@is_occupied = is_occupied
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		@renters = [Person.new]

	def to_s
    	"#{@name} has #{@sqft} sqft and #{@renters.count} renters at #{@rent}/month."
  	end


	# apartment2
	# 	@price = .420
	# 	@is_occupied = true
	# 	@sqft => 420
	# 	@num_beds = 1
	# 	@num_baths = 1
	# 	@renters = Person.new

	end




end