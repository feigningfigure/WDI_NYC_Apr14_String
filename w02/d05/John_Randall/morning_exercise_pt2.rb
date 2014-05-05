require 'Faker'

class Person

	def initialize (name, age, company, email)
		@name = name
		@age = age
		@company = company
		@email = email
	end

	def to_s
		return "#{@name} is a #{@age} year old working for #{@company} who can be reached at #{@email}."
	end

end


$address_book = []

50.times do
	$address_book << Person.new(Faker::Name.name, rand(90), Faker::Company.name, Faker::Internet.email)
end


$address_book.each {|person| puts person}
	