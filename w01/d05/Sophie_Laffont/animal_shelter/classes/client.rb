class Client

#   - A client should have a name.
#   - A client should have an age.
#   - A client can have multiple pets (animals), but it doesn't start with any.
#     - Pet names MUST be unique (What implications does this have for our choice of data structure?)
#   - A client should be able to accept a pet

	attr_accessor :name, :age, :animal

	def initialize( name, age = nil, animals = [])
		@name = name
		@age = age	
		@animals = animals
	end


	def to_s
		if animals.length !=0
	    puts "#{@name} is #{@age} years old with #{animals.length} pets."
		else
		"#{@name} is #{@age} years old with no pets."
	  	end
	end

#PRINT NAMES OF PETS
	def count_animals
		number_of_animals == animals.length
	end

# ADOPT A PET
	def client_adopt (animal)
		@animals << animal
	end

# GIVE AWAY A PET
	def client_give(animal)

		end

end



  - A client shoule be able to give away a pet		