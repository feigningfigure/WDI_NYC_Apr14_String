# - Client:
#   - A client should have a name.
#   - A client should have an age.
#   - A client can have multiple pets (animals), but it doesn't start with any.


class Client
	attr_accessor :name, :age, :pets

	def initialize(name, age = nil, pets = {})
		@name = name
		@age = age
		@pets = pets
	end

	def to_s
		if @age && @name
			return "#{@name} is a #{@age} year old with #{pets.keys.length} pets."
		elsif !@age
			return "#{@name} has #{@pets.keys.length} pets."
		else
			puts "ERROR in Client.to_s"
		end
	end

	def pet_count
		return @pets.keys.length
	end

	def display_pets														# NOT SURE
		# puts "#{@name} has pets named #{@pets.keys.join(', ')}."	
		# puts @pets
		puts @pets.each { |k,v| puts k  }

	end

	def give_away_pet(pet_being_abandoned)
		return @pets.delete(pet_being_abandoned)
														# ToDO should have ERROR messaging?
	end


	def accept_pet(animal_name, animal_obj)
		# puts "what is the new name for this animal?"
		# gets owner_nickname
		@pets[animal_name] = animal_obj

	end


end






