spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

class Developer 

	attr_accessor :l_name, :f_name, :fav_lang

	def initialize(fav_lang, student_hash)
		@fav_lang = fav_lang
		@l_name = student_hash{:first_name}
		@f_name = student_hash{:last_name}
	end

	def to_s
		"my name is #{@f_name} #{@l_name} and I love to program in #{@fav_lang}"
	end
end

wdi_objects = []

spring_wdi.each do |x|
	first_name = x.split[0]
	last_name = x.split[1]
	favorite_language = languages.sample
	wdi_objects << Developer.new(favorite_language, {:first_name => first_name, :last_name =>last_name})
end

	return 
