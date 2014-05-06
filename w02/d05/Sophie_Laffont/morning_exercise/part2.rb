require 'faker'
require 'pry'

# Person.new(name, email, age, company)

class Person

	def initialize
		@name = Faker::Name.name
		@age = rand(18..75)
		@company = Faker::Company.name
		@email = Faker::Internet.email(name = @name)
	end

	def to_s
		"My name is #{@name} and I am #{@age} years old.  I work for #{@company} and you can contact me at #{@email}"
	end

end

people_array = []

50.times do 
	people_array << Person.new
end

people_array.each do |person|
	puts person.to_s
end

