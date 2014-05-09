require 'faker'

class Person

	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end

	def speak
		puts "Hi. My name is #{@name}, a #{@age} year old #{gender}"
	end

end

person_array = []

5.times {person_array << Person.new(Faker::Name.name, rand(3..99), ["male", "female"].sample)}

person_array[3].speak

class Dog

	attr_accessor :name, :owner

	def initialize(name, owner)
		@name = name
		@owner = owner
	end

	def speak
		puts "Hi. My name is #{@name}, #{@owner}'s dog"
	end
end