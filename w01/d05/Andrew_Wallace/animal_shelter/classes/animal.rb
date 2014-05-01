class Animal
	attr_accessor :name, :age, :gender, :toys
	def initialize(animal_hash)
		@name = animal_hash["Name"]
		@age = animal_hash["Age"]
		@gender = animal_hash["Gender"]
		@species = animal_hash["Species"]
		@toys = []
	end

	#.rstring strips trailing whitespace off of the right side of a string
	def to_s
		"#{@name} is a #{@age} year old #{@gender} #{@species} that loves #{@toys.join(", ")}".rstrip
	end
end
