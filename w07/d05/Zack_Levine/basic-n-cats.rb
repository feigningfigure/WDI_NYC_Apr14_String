module AnimalBodilyFunctions
	def bark
	puts "now i am currently barking deal with it..."
	end
end

class DogBlueprint
	include AnimalBodilyFunctions

	attr_accessor :breed, :name

	def initialize(breed,name)
		@breed = breed
		@name = name
	end
end
#instanciate a new dog called db1 
	db1 = DogBlueprint.new("labradoodle","king james the iii")
#tell db1 to bark via the ABF, .bark method
db1.bark
