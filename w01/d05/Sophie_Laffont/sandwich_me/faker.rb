# THIS WILL PRINT OUT THE RANDOM NAME SOF 100 STUDENTS

require 'Faker'

	class Person


	attr_accessor :name
		def initialize
			@name = Faker::Name.name
	end


	def to_s # this is the TO STRING method
		"Hi my name is #{person.name}." # the puts will go when we create the name
	end
end

	 arr = []
	 # do this 100 times
	 # Person.new will be appended to the array every time it is created
	 100.times {arr << Person.new} 

	 # alternate way of writing the above
	 # 100.time do
	 # arr << Person.new

	 arr.each do |person|
	 	#puts person.to_s
	 	puts "Hi my name is #{person.name}."
	end

