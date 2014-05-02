class Animal
	attr_accessor :name, :age, :gender, :toys
	def initialize(name, age, gender, species, toys = [] )
		@name = name
		@age = age
		@gender = gender
		@species = species
		@toys = toys
	end

	#.rstring strips trailing whitespace off of the right side of a string
	def to_s
		if @toys.empty? == false
		"#{@name} is a #{@age} year old #{@gender} #{@species} that loves #{@toys.join(", ")}".rstrip
		else
		"#{@name} is a #{@age} year old #{@gender} #{@species}"
		end
	end
end
