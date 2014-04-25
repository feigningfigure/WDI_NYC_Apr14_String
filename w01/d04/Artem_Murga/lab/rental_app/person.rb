class Person
	attr_reader :name, :gender
	attr_accessor :age, :apartment 
	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
		@apartment = []
	end

	def to_s
		puts "This is #{name}, #{gender}, and #{age} years old and resides in the following #{apartment}"
	end
end