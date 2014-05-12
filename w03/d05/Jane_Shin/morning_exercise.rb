require 'pry'
require 'Faker'

class Superhero

attr_accessor :name, :age, :gender
#my way
def initialize(name, age, gender)
	@name = name
	@age = age
	@gender = gender
end

def speak
	puts "Hi. I'm #{@name}, a #{age}-year-old #{gender}"
end

end

league = []

5.times do
	age = rand(18..99)
	gender = ["man", "woman"]
	gender = gender.shuffle
	member = Superhero.new(Faker::Name.name, age, gender)
	league << member
end

league


class Dog
	attr_accessor :name, :owner

	def initialize(name, owner)
		@name = name
		@owner = owner
	end

	def speak
		puts "Say my name, #{@name}. Call me owner, #{@owner}"
	end
end

Dog.new