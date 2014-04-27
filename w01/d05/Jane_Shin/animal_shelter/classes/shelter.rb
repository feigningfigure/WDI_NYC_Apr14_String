class Shelter
	attr_accessor :name, :address, :clients, :animals

	def initialize(shelter_name, shelter_address)
		@name = shelter_name
		@address = shelter_address
		@clients = Hash.new
		@animals = Hash.new
	end

	def client_count
		@clients.length
	end

	def animal_count
		@animals.length
	end

	def display_animals
		@animals.each {|animal, attr| puts animal}
	end

	def display_clients
		@clients.each {|client, attr| puts client}
	end

	def give_away_animal(name)
		if @animals.include?(name)
			@animals.delete(name)
		end
	end

	def accept_animal(name, animal_attr)
		@animals[name] = animal_attr
	end

	def accept_client(name, client_attr)
		@clients[name] = client_attr
	end

	def to_s
		"#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
	end

end
