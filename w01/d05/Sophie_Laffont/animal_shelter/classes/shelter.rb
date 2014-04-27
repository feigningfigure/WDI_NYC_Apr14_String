class Shelter


	attr_accessor :name, :address, :clients, :animals

	def initialize( name, address = nil, clients = [], animals = [])
		@name = name
		@adress = address	
		@clients = clients
		@animals = animals
	end

end


