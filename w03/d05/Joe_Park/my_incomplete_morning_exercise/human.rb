require 'faker'

class Human

	attr_accessor :name, :age, :gender


	def initialize
		@name = Faker::Name.name
		@age = Faker::Number.number(2)
		@gender = ["male", "female"].sample
	end

	# def bender
	# 	if @gender == "Mr. " || "Dr. "
	# 		@gender = "male"
	# 	else
	# 		@gender = "female"
	# 	end
	# end


	def speak
		"Hi, I'm #{@name}, a #{@age}-year-old #{@gender}"
	end

end

humans = []
5.times do
	humans << Human.new
end

humans.each do |human|
	p human.speak
end


# ["male", "female"].sample