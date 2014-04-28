	

class Shelter

	attr_accessor :name, :adress, :animals, :clients 

	def initialize (name, address)
		@name = name
		@address = address
		@animals = []
		@clients = []
	end
	def clients(x)
		@clients.each do |index|
			return @clients[index] if @clients[index] == x
		end
	end
end

@clients = ["steve","paul", "dave"]