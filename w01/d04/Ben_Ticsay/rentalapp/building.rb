require_relative "apartment"
require_relative "person"

class Building

	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments,







	def initialize(address, style, etc)



		@address = address
		@style = style
		@has_doorman = true
		@is_walkup = false
		@num_floors = 1
		@apartment = Apartment.new
	end

	def to_s 
		puts "the addres of this buiilding is #{address}"
	end
	# def building.apartment_method
 #        puts 
 #    end

 #    def attribute_method
 #        self.class.attribute_method
 #    end


end