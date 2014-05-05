# Make a hash of names
# The key should be their initials as a symbol
# :np for Neel Patel
# The value should be an array for [first_name, last_name]
# ['Neel', 'Patel'] ALL of these names should be in your hash

spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

# names = {}
# class Name_hash
# 	attr_accessor :initials, :firstname, :lastname

# 	def initialize(spring_wdi)
# 		@initials = initials
# 		@firstname = firstname
# 		@lastname = lastname
# 		@name = []
# 	end

# 	def get_name(spring_wdi)
# 		spring_wdi.each | do |
			
# 		end
# end

#morning exercise with Neel
spring_hash = Hash.new

spring_wdi.each do |name|
	#.split will default on splitting on the space
	#setting two variables in below line
	firstname, lastname = name.split
	#strings like arrays, also have indexes
	#ln35 called the first letter in each variable, made them lowercases, then turned it into a symbol
	initials_symbol = [firstname[0], lastname[0]].join.downcase.to_sym
	spring_hash[initials_symbol] = [firstname, lastname]
end

p spring_hash