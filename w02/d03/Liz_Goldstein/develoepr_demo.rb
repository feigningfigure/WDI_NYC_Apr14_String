spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

wdi_objects = []

spring_wdi.each do |student|
  first_name = student.split[0]  #splits on space automatically
  last_name = student.split[1]
  favorite_language = languages.sample
end

wdi_objects << Developer.new(favorite_language, {:first_name => first_name, :last_name => last_name})
# hash is created in initialize

class Develoepr
attr_accessor :first_name, :last_name, :favorite_language

def initialize(favorite_language, hash_students)
@favorite_language = favorite_language
@first_name = hash_students[:first_name]
@last_name = hash_students[:last_name]
end

def to_s
"My name is #{@first_name} #{@last_name} and I love program in #{@favorite_language}."
end

end

wdi_objects.to_s
