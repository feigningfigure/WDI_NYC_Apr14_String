class Animal
  attr_accessor :name, :age, :species, :toys

 	def initialize (pet_name, pet_age, species)
    	@name = pet_name
    	@age = pet_age
    	@species = species
    	@toys = []
	end

	def to_s
		"#{@name} is a #{@age} year old #{species} that loves #{@toys.join(", ")}"
	end
 
end
