require_relative "apartment"
require_relative "person"

class Building

	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments,


	def initialize(address, style, has_doorman, is_walkup, num_floors, apartments)

		puts "Building data gathered!"

		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartment = apartment#{Apartment.new}
	end

	def to_s 
		puts "This building is located at #{@address}, is {#{@style}, has #{@has_doorman.to_s}, is a #{@is_walkup.to_s} and #{@num_floors.to_s}. There are #{@apartments.count}"
	end
	# def building.apartment_method
 #        puts 
 #    end

 #    def attribute_method
 #        self.class.attribute_method
 #    end


end