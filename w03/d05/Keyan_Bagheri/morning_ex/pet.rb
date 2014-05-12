require 'faker'

class Dog

	attr_accessor :name, :owner

	def initialize
		@name = Faker::Name.first_name
		@owner = Faker::Name.name
	end

	def speak
		"Woof"
	end

end

array_of_dogs = []

	5.times do

	array_of_dogs << Dog.new

	end


puts array_of_dogs[0].speak
