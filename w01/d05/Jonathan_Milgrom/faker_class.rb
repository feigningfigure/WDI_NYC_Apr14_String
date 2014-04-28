
require 'faker'

class Person

	attr_accessor :name	
	
	def initialize
		@name = Faker::Name.name
	end

	def to_s 
		"Hi! My name is #{@name}"
	end
end

x = []

for y in (1..100)
	y = Person.new
	x << y
end

# puts x

# y=0
# while (y < 100)
# 	x << Person.new
# 	y +=1
# end
# puts x

x.each do |person|
	puts person.to_s
end
