require_relative "apartment"
require_relative "person"

class Building

	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments,


	def initialize(address, style, has_doorman, is_walkup, num_floors, apartments)


		@address = address
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		@num_floors = num_floors
		@apartment = {Apartment.new}
	end

	def to_s 
		puts "This building is located at #{@address}, is {#{@style}, has #{@has_doorman}, and #{@num_floors}"
	end
	# def building.apartment_method
 #        puts 
 #    end

 #    def attribute_method
 #        self.class.attribute_method
 #    end


end