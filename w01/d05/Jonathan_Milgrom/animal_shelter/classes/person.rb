class Client

	attr_accessor :name, :age, :gender, :pets

	def initialize (name, age=nil)
		@name = name
		@age = age
		@pets = {}
	end

	def to_s
		"#{@name} is a #{@age} year old with 0 pets"
	end

	def pet_count
		return @pets.length
	end

	def accept_pet(x, y)
		pets[x] = y
	end

	def give_away_pet(x)
		@pets.delete(x)
	end

	def display_pets
		x = []
		@pets.each do |k, v|
			x << k
		end
		return x
	end

end

# peter = Person.new('Beth', 30)
# peter.accept_pet("dog", "dog value")
# peter.accept_pet("cat", "cat value")

# puts peter.display_pets
