require 'faker'

class Person

	# attr_accessor :name, :age, :company, :email

	def initialize
		@name = Faker::Name.name
		@age = rand(25..120)
		@company = Faker::Company.name
		@email = Faker::Internet.email(@name)
	end

	def to_s
		puts "My name is #{@name} and I'm #{@age} years old, work for #{@company} and can be reached at #{@email}"
	end
end

person_array = []

# for x in (1..50)
# 	person_array << Person.new
# end

50.times { person_array << Person.new }

for x in (0..person_array.length)
	person_array[x].to_s
end 

