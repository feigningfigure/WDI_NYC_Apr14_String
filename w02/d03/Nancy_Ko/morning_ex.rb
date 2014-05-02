class Developer 

attr_accessor :first_name :last_name :fav_language

spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]
# creating developer objects we need to have a fav language. fav language is to be random 
	def initialize(fav_language hash_students)
		@fav_language = fav_language
		@first_name = hash_students[:first_name]
		@last_name = hash_students[:last_name]
	end  #closing initialize

	def 
	end 

	def to_s
	puts "My name is #{first_name} #{last_name} and I love to program in #{fav_language}."
	end #This is closing to_s method

end #This is closing the class 

wdi_objects = []
spring_wdi.each do |x|
	# this is splitting the array of strings and separating into first and last 
first_name = x.split[0]
#split[0] creates an array from a string using its index 
last_name = x.split[1] 
#split[1] the last name has an index of 1 after the split
fav_language = languages.sample
# sample(random: rng) → obj
# sample(n) → new_ary
# sample(n, random: rng) → new_ary
# Choose a random element or n random elements from the array. The elements are chosen by using random and unique indices into the array in order to ensure that an element doesn’t repeat itself unless the array already contained duplicate elements. If the array is empty the first form returns nil and the second form returns an empty array.
wdi_objects = Developer.new(fav_language, {:first_name => first_name, :last_name => last_name})
#Everytime a new developer is created it will automatically get a random fav_language with it.. 
# first_name is the value associated with the key :first_name and last_name associated with the :last_name 
Do we convert the hash to string? 	

