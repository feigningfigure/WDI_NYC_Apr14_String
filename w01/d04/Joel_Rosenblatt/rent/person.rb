class Person

	attr_accessor :name, :age, :gender, :apartment

	def initialize(name, age, gender, apartment)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end

	def to_s
		"Name: #{@name}."
		"Age: #{@age}."
		"Gender: #{@gender}."
		"Apartment: {@apartment}."

	end


end
