class Animal

	attr_accessor :name, :age, :species, :toys

	@@animals_log = []

	def initialize(name, age = nil, species = nil, toys = [])
		#name should be uniq
		@name = name
		@age = age
		@species = species
		@toys = []
		@@animals_log << self	
	end

	def to_s
		"#{@name} is a #{@age} year old #{@species} that loves #{@toys.join(", ")}"
	end

	def self.animals_log
	 	@@animals_log
	end 

end


