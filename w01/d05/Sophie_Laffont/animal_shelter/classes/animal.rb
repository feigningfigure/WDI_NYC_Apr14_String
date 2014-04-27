class Animal

	attr_accessor :name, :species, :age, :toys

	def initialize( name, species,  age = nil, toys = [])
		@name = name
		@species = species
		@age = age
		@toys = toys
	end

	def to_s

		if toys.length > 0 
			return "#{@name} is a #{@age} year old #{@species}that loves #{@toys}."
		else
			return "#{@name} is a #{@age} year old #{@species}."
		end
	end

	 # Pet names MUST be unique (What implications does this have for our choice of data structure?)
	#A client should be able to accept a pet
 	# A client shoule be able to give away a pet
 	
end
