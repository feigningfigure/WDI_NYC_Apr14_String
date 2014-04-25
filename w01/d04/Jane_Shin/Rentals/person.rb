class Person
	attr_accessor :name, :age, :gender, :apartment

	def initialize(name, age, gender, apartment)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end

	to_s
		"Tenant's name is #{name}\n"
		"Tenant is #{age} years old.\n"
		"The tenant will go to the #{gender}'s bathroom to pee.\n"
		"Tenanant lives in #{apartment} of the complex."
	end
end