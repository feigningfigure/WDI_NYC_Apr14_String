$spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

$languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

first_last = []
first_last << $spring_wdi.to_s.split(" ")
puts first_last.sample

class Developer
attr_accessor :first_name, :last_name, :language

  def initialize
  @first_name = $spring_wdi.to_s.split.sample
  @last_name = $spring_wdi.to_s.split.sample
  @language = $languages.sample
  end

  def to_s
    "My name is #{@first_name} #{@first_name} and I love #{@language}."
  end

end

student1 = Developer.new
puts student1.to_s
