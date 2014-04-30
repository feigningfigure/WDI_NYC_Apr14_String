spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

new = []
spring_wdi.each do |variable|
	variable.split("")
	new << variable
end

p new
#p spring_wdi_hash = Hash[*spring_wdi]
	



# class Developer

# 	attr_reader :first_name

# @@languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

# @@spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

# 	def initialize
# 		@first_name = @@spring_wdi.sample.split[0]
# 		@last_name = @@spring_wdi.sample.split[1]
# 		@language = @@languages.sample
# 	end

# 	def to_s
# 		"My name is #{@first_name} #{@last_name} and I love to program in #{@language}."
# 	end

# end
# # p a = Developer.new
# # p a.first_name
# developers = []
# 25.times { developers<<Developer.new }







