require_relative 'developer'

spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

languages = ["Ruby", "Javascript", "C++", "Python", "Fortran", "Java", "Klingon"]

wdi_objects = []

spring_wdi.each do |student|
  first_name = student.split[0]
  last_name = student.split[1]
  favorite_language = languages.sample
  # Curly braces are optional. This is an options hash, which will come up in rails a lot
  wdi_objects << Developer.new(favorite_language, :first_name => first_name, :last_name => last_name)
end

wdi_objects.each do |object|
  puts object.to_s
end

# joe = Developer.new('Joe','Park')
# puts joe.to_s

# artem = Developer.new('Artem','Murga')
# puts artem.to_s

# developer_array = []

# developer_array << joe
# developer_array << artem

# puts "#{developer_array}"

# developer_array = []

# developer_array << "#{joe.first_name} #{joe.last_name}"
# developer_array << "#{artem.first_name} #{artem.last_name}"

# puts "#{developer_array}"
