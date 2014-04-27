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

	def create_animal(name, age, gender, species, toys)
		name = Animal.new(name, age, gender, species)
		# unless toys.empty?
		# 	toys.each do |toy|
		# 		<< toy

		@animals[@animal_name.name.to_sym] = @animal_name

	end
end

