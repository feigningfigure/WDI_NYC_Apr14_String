require 'faker'
require 'pry'

class Person
	#@@ creates a class variable ~ to an @instance varaible, it is created everytime the class runs
	# attr_accessor :name, :age, :company, :email
	#concious decision to not have attr_accessor because we will never call on these specific parameters class.attr after we make them, based off code design
	def initialize #(name, age, company, email)design purpose to remove params bc faker will make it, no need to pass it thru
	@name = Faker::Name.name
	@age = rand(18..75) #Faker::Number.numbers(1..2)
	@company = Faker::Company.name
	@email = Faker::Internet.email(name = @name)
	end

	def to_s
		"I'm #{@name}, #{@age} years old. I work at #{@company} and you can reach me at #{@email}."
	end

end

fake_peeps = []

# x = 0
# while x < 5
	10.times do
	# name = Faker::Name.name
	# age = Faker::Number.digit
	# company = Faker::Company.name
	# email = Faker::Internet.email
	# peep = Person.new(name, age, company, email)
	fake_peeps << Person.new
end

fake_peeps.each do |peep|
	puts peep.to_s
end

#.clear empties out an array