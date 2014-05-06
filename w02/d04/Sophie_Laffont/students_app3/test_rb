require 'faker'

class Person

	attr_accessor :name

	def initialize
		@name = Faker::Name.name
	end

	def slim_shady
		"Hi, my name is #{self.name} and I not so secretly hate you"
	end
end

arr = []
100.times {arr << Person.new}

puts "My List of Enemies!"
arr.each do |person|
	puts person.slim_shady
end
