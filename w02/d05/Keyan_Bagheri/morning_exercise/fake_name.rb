require 'Faker'


class Person

	def initialize
		@name = Faker::Name.name
		@age = rand(18..75)
		@company = Faker::Company.name
		@email = Faker::Internet.email
	end

	def to_s
		"#{@name} is employed at #{@company}. #{@name} is now #{@age} years old.\nYou may contact #{@name} at #{@email}"
	end
end

persons_hash = {}

for num in (0...50)
	persons_hash[num] = Person.new
end

persons_hash.each {|person| p person}