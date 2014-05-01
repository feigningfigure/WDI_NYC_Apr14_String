class Shelter
	attr_accessor :name, :address, :animals, :clients

	def initialize(name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end

	def to_s
		"#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
	end

	def display_clients
		client_string = []
		@clients.each do |k, v|
		 	client_string << v.to_s 
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

	def display_animal(animal_name)
		current_name = @animals[animal_name.to_sym]
		current_name.to_s
	end

	def display_client(client_name)
		current_name = @clients[client_name.to_sym]
		current_name.to_s
	end

	def create_animal(animal_name, animal_age, animal_gender, animal_type, animal_toys)
		animal_name = Animal.new(animal_name, animal_age, animal_gender,  animal_type, animal_toys)
		@animals[animal_name.name.to_sym] = animal_name
	end

	def create_client(client_name, client_age, client_gender, client_kids)
		client_name = Person.new(client_name, client_age, client_gender, client_kids)
		@clients[client_name.name.to_sym] = client_name
	end

	def release_animal(animal_name)
		@animals.delete(animal_name.to_sym)
	end
end




















