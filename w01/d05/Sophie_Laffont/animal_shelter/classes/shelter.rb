class Shelter


	attr_accessor :name, :address, :clients, :animals

	def initialize( name, address = nil, clients = [], animals = [])
		@name = name
		@address = address	
		@clients = clients
		@animals = animals
	end


def adoption
	animals to client
end

 # Shelter:
 #  - A shelter should have a name
 #  - A shelter can have multiple animals, but it doesn't start with any.
 #    - Animal names MUST be unique
 #  - A shelter can have multiple clients, but it doesn't start with any.
 #    - Client names MUST be unique
 #  - A shelter should be able to display all of its clients.
 #  - A shelter should be able to display all of its animals.
 #  - A shelter should be able to give away an animal.
 #  - A shelter should be able to accept an animal
 #  - A shelter should be able to accept a client
