

# class Developer
# attr_accessor :first_name, :last_name, :language

# 	def initialize (spring_wdi, languages)
# 		@first_name = first_name
# 		@last_name = last_name
# 		@language = language
# 		@developer = []
# 	end

# 	def first_name(spring_wdi)
# 		spring_wdi.each do |f, l|
# 			@developer << f.gsub(' ', '').split(//)
# 	end

# 	def last_name(spring_wdi)
# 		spring_wdi.each do |f, l|
# 			@developer << l.gsub(' ', '').split(//)
# 	end

# 	def language
# 		x = rand(1..7)
# 		@language = languages[x]
# 		@language << @developer
# 	end

# 	def to_s
# 		"My name is #{@first_name} #{@last_name} and I love to program in #{@language}."
# 	end

# end

spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

#exericise solution
class Developer
	attr_accessor :first_name, :last_name, :favorite_language

	def initialize(favorite_language, hash_students{})
		@favorite_language = favorite_language
		#using hash so that we can make the full name a hash and make the key=firstname and value=lastname
		@first_name = hash_students[:first_name]
		@last_name = last_name[:last_name]
	end

	def to_s
		"My name is #{@first_name} #{@last_name} and I love to program in #{@favorite_language}."
	end	
end


wdi_objects = []
#after making the objects you need to put them into an array
spring_wdi.each do |student|
	first_name = student.split[0]
	last_name = student.split[1]
	#.sample will pull one random element from an array, built in ruby method
	favorite_language = languages.sample
							#don't really need to assign first name here AND in the class, messy code for the sake of the hash/array exercise
							#ruby figures out that the key and value make up a hash without the "{}" as long as they are the last arguments
	wdi_objects << Developer.new(favorite_language, :first_name => first_name, :last_name => last_name)
end




