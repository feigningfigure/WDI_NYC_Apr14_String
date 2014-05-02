require 'Faker'

class Person

	# attr_accessor :name, :age, :company, :email

	def initialize
		@name = Faker::Name.name
		@age = Faker::Number.number(2)
		@company = Faker::Company.name
		@email = Faker::Internet.email(name = @name)
	end

	def to_s
		"#{@name} #{@age} #{@company} #{@email}"
	end

end


# person_hash = {}

# for x in (0..50)

# 	person_hash[x] = Person.new

# end

# person_hash.each do |key, value| 
# 	@profile = value
# end

# @profile.to_s
# ---------------------------------------#
# OR
# ---------------------------------------#
people_array = []
50.times do 
	people_array << Person.new
end
# print people_array
people_array.each do |person|
	puts person.to_s
end

#print random one from array
# people_array.sample.to_s
