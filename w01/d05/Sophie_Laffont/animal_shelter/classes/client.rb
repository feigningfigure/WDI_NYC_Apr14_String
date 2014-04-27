class Client

	attr_accessor :name, :age, :animal

	def initialize( name, age = nil, animals = [])
		@name = name
		@age = age	
		@animals = animals
	end

  # def add_person(clients_array)
  #   person_array.each do |person_hash|
  #     @persons << Person.new(person_hash)
  #   end

end