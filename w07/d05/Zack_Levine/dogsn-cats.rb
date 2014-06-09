class DogBlueprint
	attr_accessor :breed, :name,:weight, :surname
	# def get(breed)
	# 	return @breed
	# end

	def initialize(breed,name)
		@breed = breed
		@name = name
		@weight = 0 #get ready to accept a int
		@surname = "" #get ready to accept a string
	end

		def bark
			puts "now i am currently barking deal with it..."
		end

end
#activate modules
db = DogBlueprint.new("labradoodle","king james the iii")
db.extend(Bark)


PRY>
dog_instance1 = DogBlueprint.new("labradoodle","king james the iii")

PRY>
dog_instance1.name #works due to the attr_accessor so i can GET THAT

PRY>
dog_instance1.weight = 348 #sets it due to the attr_accessor
