class Building

	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments	

	def initialize(address, style, has_doorman, is_walkup)
		@address = address  
		@style = style
		@has_doorman = has_doorman
		@is_walkup = is_walkup
		apartments = [] 
	end

	def to_s 
		puts "this address is #{@address}"
		puts "the style of this building is #{@style}"
		if has_doorman
			puts "this buildings has a doorman"
		else
			puts "this buildings does NOT have a doorman"
		end
		if is_walkup 
			puts "this building is a walkup"
		else
			puts "this bulding is NOT a walkup"
		end

	end

end

building1 = Building.new("123 code street", "tall", true, false)

building1.to_s


