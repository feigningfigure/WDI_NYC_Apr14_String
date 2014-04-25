require 'rainbow'

class Person

	attr_accessor :name, :age, :gender, :apartment

	def initialize(name, age, gender, apartment)
		@name = name
		@age = age
		@gender = gender
		@apartment = apartment
	end

	def to_s
		"Your name is #{@name}.\n"
		"Your age is #{@age}.\n"
		"Your gender is #{@gender}.\n"
		"The apartment you are looking for is {@apartment}.\n"

	end

	def show_person
		puts " 00000 ".color('ff0000')
		puts "OOOOOOO".color('ff0000')
		puts "(='.'=)".color('f2d4c2')
		puts "( {|} )".color('b266b2')
		puts "|||||||".color('31748f')
	end

end

josephin = Person.new("Josephin", 18, "female", 11).to_s