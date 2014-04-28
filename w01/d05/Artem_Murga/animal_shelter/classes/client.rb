class Client
	#require 'set'


	attr_accessor :name, :age, :gender, :pets 

	def initialize (name, age = nil, gender = nil, pets = {})
		@name = name
		@age = age
		@gender = age
		#need to try to implement #Set.new here
		@pets = {}
	end

	def pets
		@pets
	end

	def to_s
		"#{@name} is a #{@age} year old with #{@pets.size} pets"
	end

	def display_pets
		 @pets.each do |k, v|
		 	puts k		 	
		 end
	end

	def pet_count
		@pets.size
	end

	def give_away_pet(name) #(@pets[name])
		@pets.delete(name)
	end

	def accept_pet (name, value)
		@pets[name] = value 
	end

end

