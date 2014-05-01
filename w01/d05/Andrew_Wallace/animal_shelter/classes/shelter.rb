class Shelter
	attr_accessor :name, :address, :animals, :clients

	def initialize(shelter_hash)
		@name = shelter_hash["Name"]
		@address = shelter_hash["Address"]
		@animals = []
		@clients = []
	end

	def to_s
		"#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
	end

	def display_clients
		client_string = []
		@clients.each do |client|
		 	client_string << client_hash.to_s
		end
		"#{client_string.join(" \n")}"
	end

	def display_animals
		animal_string = []
		@animals.each do |k, v|
		 	animal_string << v.to_s
		end
		"#{animal_string.join(" \n")}"
	end

	def adopt(animal_hash)
		animals_hash.each do (animal_hash)
			@animals << Animal.new(animal_hash)
		end
	end

    def release_animal(animal_requested)
	    #find the animal in my animal array
	    @animals.each  { |animal_in_array|
	        if animal_requested == animal_in_array.name
	            return animal_in_array.delete(animal_requested)
	        end
	    }
	    puts "ERROR: Can't find your animal in the shelter" #FIX THIS
	end




end


