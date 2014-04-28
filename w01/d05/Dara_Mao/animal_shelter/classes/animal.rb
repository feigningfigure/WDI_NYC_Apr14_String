class Animal

	attr_accessor :name, :age, :species, :toys

	def initialize(name,age,species)
		@name = name
		@age = age
		@species = species
		@toys = []
	end
# toy_string = @toys.each { |toy| toy.to_s}
# 		puts "toy_string"
	def to_s
		"#{@name} is a #{@age} year old #{@species} that loves " + toys.join(", ")
	end

end