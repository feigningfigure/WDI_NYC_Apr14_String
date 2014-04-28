require_relative 'require'

$wdi_class = Group.new

def shit
for number in (0..($students.length-1))
  name = $students[number]["Name"].downcase.gsub(' ','')
  name = Student.new($students[number])
  $wdi_class.add_students(name)
end
puts joepark.name
end

shit

# print wdi_class.students

# joe = Student.new(wdi_class.students[0])

# wdi_class.add_students(joe)

# puts joe.email

# puts joe.to_s

# puts wdi_class.students[-1]