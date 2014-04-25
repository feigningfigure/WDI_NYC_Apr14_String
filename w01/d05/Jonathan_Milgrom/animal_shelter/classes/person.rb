class Person

	attr_accessor :name, :age, :gender, :kids

	def initialize (name, age, gender, kids)
		@name = name
		@age = age
		@gender = gender
		@kids = kids
	end

	def to_s
		"#{@name} is a #{@age} year old #{@gender} with 3 kids and 0 pets"
	end

end
