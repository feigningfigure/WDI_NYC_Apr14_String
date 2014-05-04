require 'faker'
require 'pry'


class Person

	@@people_array = []

	def initialize
		@name = Faker::Name.name
		@age = rand(18..75)
		@company = Faker::Company.name
		@email = Faker::Internet.email(name = @name)
		
		# The below array is only initialized in each instance of the Person class
		# @people_array = []
	end

	def to_s
		"My name is #{@name} and I am #{@age} years old.  I work for #{@company} and you can contact me at #{@email}"
	end

	def self.fill_people_array  
		@@people_array.clear
		50.times do 
			@@people_array << Person.new
		end
	end

	def self.see_people_array
		print @@people_array
	end

	def self.all_to_s 
		@@people_array.each do |person|
			puts person.to_s
		end
	end	

	def self.people_array
		return @@people_array
	end

end



# 50.times do 
# 	people_array << Person.new
# end

# people_array.each do |person|
# 	puts person.to_s
# end

