require 'Faker'

class Person

	attr_reader :name

	def initialize #initialize is running a program in this case

		@name = Faker::Name.name
	end

	def to_s
		"Hi! My name is #{@name}!"
		#person is an object here
	end

end

#build an array of 100 person objects
arr = []
100.times {arr << Person.new} 
#Person.new creates a new person object everytime

# 100.times do
# 	arr << Person.new
# end


#print all 100 names
arr.each do |person|
	puts "Hi my name is #{person.name}."
end





