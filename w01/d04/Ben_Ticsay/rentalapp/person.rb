class Person

	attr_accessor :name, :age, :gender, :apartment,


	def initialize(name, age, gender, apartment)

		puts "Renter data gathered"

		@name = name
		@age = age
		@gender = gender 
	end

	def to_s
    	return "The apartment is occupied by #{@name}, a #{@age} year old #{@gender}"
  	end


end