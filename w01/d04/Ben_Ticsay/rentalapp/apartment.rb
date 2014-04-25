require_relative "person"


class Apartment

	attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters,


	def initialize(price, is_occupied, sqft, num_beds, num_baths, renters)

		puts "Apartment data gathered!"

	apartment1
		@apt_num = apt_num
		@price = price
		@is_occupied = is_occupied
		@sqft = sqft
		@num_beds = num_beds
		@num_baths = num_baths
		@renters = renters#[Person.new]

	def to_s
    	"#{@apt_num} has #{@sqft.to_s} sqft, has #{@num_beds.to_s} and #{num_baths.to_s} and #{is_occupied} by #{@renters.count} renters at #{@price}/month."
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