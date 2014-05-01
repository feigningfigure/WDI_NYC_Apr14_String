class Shelter

	attr_accessor :name, :adress, :animals, :clients 

	def initialize (name, address)
		@name = name
		@address = address
		@animals = {}
		@clients = {}
	end

	def client_count
		return clients.length
	end

	def animal_count
		return @animals.length
	end


	def accept_animal(x, y)
		@animals[x] = y
	end

	def accept_client(x, y)
		@clients[x] = y
	end

	def give_away_animal(x)
		@animals.delete(x)
	end


	def display_clients
		x = []
		@clients.each do |k, v|
			x << k
		end
		puts x
	end


	def display_animals
		x = []
		@animals.each do |k, v|
			x << k
		end
		puts x
	end

	def to_s
		"#{@name} shelter at #{@address} has #{@animals.length} animals and #{@clients.length} people"
	end

end

 @shelter = Shelter.new('HappiTails', '10 East 21st Street')
  
 @shelter.accept_animal("harry", "")
