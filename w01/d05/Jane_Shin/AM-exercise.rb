require 'pry'
require 'faker'

#faker:: Name.name
class Person
	attr_reader :enemy
	#this will be a reader because it is not an input that should be touched

	def initialize
		@enemy = Faker::Name.name
	end

	def to_s
		"Hi! My name is #{@enemy}" #you're creating an object of the class so "Person.enemy" should work as well
	end

end


#correct solution
enemies = []
100.times {enemies << Person.new}
#correct solution without the syntactic sugar
# 100.times do 
# 	enemies << Person.new
# end

#my method
# x = 1..100
# enemies = []
# if x <= 100
# 	Faker::Name.name.each do |enemy|
# 		enemies << enemy
# 	end
# end

enemies.each do |enemy|
	puts enemy.to_s
end

