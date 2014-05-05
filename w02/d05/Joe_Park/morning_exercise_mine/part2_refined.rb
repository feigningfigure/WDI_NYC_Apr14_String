require 'Faker'
require 'pry'

# $people_array = []

class Person

	@@people_array = []

	def initialize
		@name = Faker::Name.name
		@age = Faker::Number.number(2)
		@company = Faker::Company.name
		@email = Faker::Internet.email(name = @name)

		# the below array is only initialized in each instance of the Person class
		# @people_array = []
	end

	def to_s
		"#{@name} #{@age} #{@company} #{@email}"
	end

	def self.fill_people_array
		@@people_array.clear
		50.times do 
			@@people_array << Person.new
		end
	end
	#incapsulated this block of code from before to reuse and call upon whenever

	def self.see_people_array
		print @@people_array
	end

	def self.all_to_s
		@@people_array.each do |person|
			puts person.to_s
		end
	end

end