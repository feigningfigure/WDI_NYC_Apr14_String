class Person
	attr_accessor :name, :age, :kids, :pets
	def initialize(person_hash)
		@name = person_hash["Name"]
		@age = person_hash["Age"]
		@gender = person_hash["Gender"]
		@kids = person_hash["Kids"].to_i
		@pets = []
	end

	def to_s
		"#{@name} is a #{@age} year old #{@gender} with #{@kids} kids and #{@pets.length} pets"
	end

	def display_pets
		pet_string = []
		@pets.each do |k, v|
		 	pet_string << v.to_s
		end
		"#{pet_string.join(" \n")}"
	end

	def accept_pet(animal)
		puts "what is the new name for this animal?"
		new_name = gets.chomp
		@pets[new_name] = animal

	end

end
