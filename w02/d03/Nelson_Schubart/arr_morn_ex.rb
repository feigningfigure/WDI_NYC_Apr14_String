
require_relative 'developer_class'

arr_students = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan",
"Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay",
"Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker",
"Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin",
"Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason
Tang", "Sophie Laffont", "Zack Levine"]

arr_languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

arr_developers = []

arr_students.each do |student|
  first_name = student.split[0]
  last_name = student.split[1]
  language = arr_languages.sample
  arr_developers << Developer.new(language, {:first_name => first_name, :last_name => last_name})
end
