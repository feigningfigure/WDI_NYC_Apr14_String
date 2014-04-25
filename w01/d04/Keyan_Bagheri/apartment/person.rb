class Person

	attr_accessor :name, :age, :gender, :apartment

	def initialize(name,age,gender,apartment)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end

	def about_person
		"#{@name} is an #{@age} year-old #{@gender} that is #{@apartment}"
	end

end


