class Person
	attr_accessor :name, :age, :kids, :pets
	def initialize(name, age, gender, kids)
		@name = name
		@age = age
		@gender = gender
		@kids = kids.to_i
		@pets = {}
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
end
