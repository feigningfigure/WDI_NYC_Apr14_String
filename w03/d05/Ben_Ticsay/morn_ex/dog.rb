require 'faker'
require 'pry'

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