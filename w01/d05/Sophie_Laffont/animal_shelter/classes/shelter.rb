class Shelter


	attr_accessor :name, :address, :clients, :animals

	def initialize( name, address = nil, clients = {}, animals = [])
		@name = name
		@address = address
		@clients = clients
		@animals = animals
	end


#number_of_clients = clients.length

def add_animal_to_shelter(animal)
	if is_duplicate(animal.name) == true
		#give new name
		puts "Give pet a new name."
	else
		animals.push(animal)
	end
end


def is_duplicate(animal_name)
	if animals.any? {|a| a.name == animal_name}
	    return true
	else
	   return false
	end
end



end

# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#     - Animal names MUST be unique
#   - A shelter can have multiple clients, but it doesn't start with any.
#     - Client names MUST be unique
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
#   - A shelter should be able to give away an animal.
#   - A shelter should be able to accept an animal
#   - A shelter should be able to accept a client
