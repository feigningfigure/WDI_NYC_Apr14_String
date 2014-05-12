require 'faker'

class Human

	attr_accessor :name, :age, :gender, :title

	def initialize
		@name = Faker::Name.name
		@age = Faker::Number.number(2)
		@gender = ["male", "female"].sample
		@title = Faker::Name.title
	end

	def speak
		"Hi, I'm #{@name}, a #{@age} year old #{@gender} #{@title}"
	end

end

array_of_people = []

	5.times do

	array_of_people << Human.new

	end

print array_of_people
puts
print array_of_people[0].speak
