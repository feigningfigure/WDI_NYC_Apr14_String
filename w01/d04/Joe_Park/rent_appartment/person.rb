class Person

	attr_accessor :name, :age, :gender, :apartment

	def initialize(name, age, gender, apartment)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end

	def to_s
		"Your name is #{@name}.\n"
		"Your age is #{@age}.\n"
		"Your gender is #{@gender}.\n"
		"The apartment you are looking for is {@apartment}.\n"

	end

end

josephin = apartment.new("Josephin", 18, female, 11).to_s