class Person
	attr_accessor :name, :age, :kids, :pets
	def initialize(name, age, gender, kids, pets = {})
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

	def acquire_pet(animal_name, animal_age, animal_gender, animal_type, animal_toys=[])
		animal_name = Animal.new(animal_name, animal_age, animal_gender,  animal_type, animal_toys)
		@pets[animal_name.name.to_sym] = animal_name
	end
end
