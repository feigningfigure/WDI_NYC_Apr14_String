class Bread

attr_accessor :sliced, :type

def initialize(sliced=false,type=nil)
	@type = type
end

end

#in pry
#declan.find_ingredients_for_sandwhich[1].sliced = true
#returns 'true'
#use the index number of array to call on bread to check if it is sliced
