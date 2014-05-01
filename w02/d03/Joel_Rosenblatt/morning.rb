class Developer
  attr_accessor :first, :last, :favorite

  def initialize(favorite, hash_students)
    @first = hash_students[:first]
    @last = hash_students[:last]
    @favorite = favorite
  end

  def to_s
    "My name is #{@first} #{@last} and I love to program in #{@favorite}."
  end

end

languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

wdi_objects = []

spring_wdi.each do |student|
  first = student.split[0]
  last = student.split[1]
  favorite = languages.sample

  wdi_objects << Developer.new(favorite, :first => first, :last => last)

end
