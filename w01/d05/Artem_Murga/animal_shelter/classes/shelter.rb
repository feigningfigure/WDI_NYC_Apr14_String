class Shelter
	
	attr_accessor :name, :address, :animals, :clients 

	def initialize (name, address, animals = nil, clients = nil)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end		

	def client_count
		@clients.size
	end

	def animal_count
		@animals.size
	end

	def display_animals 
		@animals.each do |k, v|
		 	p k		 	
		 end
	end

	def display_clients
		@clients.each do |k, v|
		 	puts k		 	
		 end
	end

	def give_away_animal(name)
		@animals.delete(name)
	end

	def accept_client (name, value)
		@clients[name] = value
	end

	def accept_animal (name, value)
		@animals[name] = value
	end

	def to_s
		"#{name} shelter at #{address} has #{animal_count} animals and #{client_count} people"
	end

end
