class Animal

 # - An animal should have a name.
 #  - An animal should have a species.
 #  - An animal can have multiple toys, but doesn't start with any.

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

 
end
