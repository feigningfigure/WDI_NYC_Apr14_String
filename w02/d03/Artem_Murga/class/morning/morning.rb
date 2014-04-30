

class Developerсдфыы Вумудщзук


@@languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

@@spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

	def initialize
		@first_name = @@spring_wdi.sample.split[0]
		@last_name = @@spring_wdi.sample.split[1]
		@language = @@languages.sample
	end

	def to_s
		"My name is #{@first_name} #{@last_name} and I love to program in #{@language}."
	end

end

developers = []
25.times { developers<<Developer.new }
puts developers


