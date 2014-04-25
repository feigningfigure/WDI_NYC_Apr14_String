require 'Faker'

class Person 
	def initialize
		@name = Faker::Name.name
	end

	def to_s
		"Hi! My name is #{@name}"
	end

end

array = []
100.times { array << Person.new }

p array 