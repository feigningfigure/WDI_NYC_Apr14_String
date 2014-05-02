require 'faker'
require 'pry'

class Person
	attr_accessor :name
	attr_accessor :age
	attr_accessor :company
	attr_accessor :email

def intialize
	@name = Faker::Name.name
# 	@age = Faker::Age.age
# 	@company = Faker::Company.company
# 	@email = Faker::Email.email
end

def fifty_people
	"name: #{self.name}"
end
end

arr =[]
50.times {arr << Person.new}

puts "Fifty people"
arr.each do |person|
	puts person.fifty_people
end


