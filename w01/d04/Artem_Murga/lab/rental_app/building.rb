
class Building 

	attr_reader :address, :style, :is_walkup, :is_walkup, :num_floors
	attr_writer 
	attr_accessor :has_doorman, :apartments

	def initialize (address, style, has_doorman, is_walkup, num_floors) 
		@address = address
		@style = style
		@has_doorman = nil
		@is_walkup = nil
		@num_floors = nil
		@apartments = []
	end

end







