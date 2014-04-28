# - Shelter:
#   - A shelter should have a name
#   - A shelter can have multiple animals, but it doesn't start with any.
#   - A shelter can have multiple clients, but it doesn't start with any.
#   - A shelter should be able to display all of its clients.
#   - A shelter should be able to display all of its animals.
	#   - A shelter should be able to facilitate an adoption (one of its clients adopting one of the animals from shelter)
#   - A shelter should be able to facilitate a return (one of its clients returning his/her pet to the shelter)


class Shelter

	attr_accessor :name, :address, :clients, :animals

	def initialize( name, address = nil, clients = {}, animals = {})
		@name = name
		@address = address	
		@clients = clients
		@animals = animals
	end

	def to_s 
		return "#{@name} shelter at #{@address} has #{animal_count} animals and #{client_count} people"
	end
	
	def accept_client(obj_friendly_name, obj)
		@clients[obj_friendly_name, obj]
	end

	def accept_animal(obj_friendly_name, obj)
		@animals[obj_friendly_name, obj]
	end

	def client_count
		return @clients.length
	end

	def animal_count
		return @animals.length
	end

	def display_all_clients
		return @clients.keys
	end

	def display_all_animals
		return @animals.keys
	end

	def give_away_animal(animal_name)				#TO DO: error message
		return @animals.delete(animal_name)
	end

	


end


