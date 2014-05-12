require 'faker'
# require 'pry'

class Human
	attr_accessor :name, :age, :gender

	def initialize(name, age, gender)
		@name = name
		@age = age
		@gender = gender
	end

	def speak
		puts "Hi i'm #{@name}, a #{@age} year old #{@gender}"
	end
end


class Dog

attr_accessor :name, :owner

	def intialize 
		@name = name
		@owner = owner
	end

	def speak
		puts "Hi i'm #{@name}, and my owner is #{@owner}"
	end
end

module Superhero

	def fly
		puts "#{self.name} is flying!"
	end

	def save_people
		puts "#{self.name} saved people!"
	end
end

