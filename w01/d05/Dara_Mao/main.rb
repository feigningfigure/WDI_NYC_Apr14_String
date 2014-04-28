require 'classes/student'
require 'db/students'

array_of_student_objects = []

#pass on each student
$student.each do |student_hash|
  array_of_student_objects << Student.new(student_hash)
end

p array_of_student_objects

# $joe_hash = $students[0]
# $joe = Student.new($joe_hash)
# $joe
# $joe.name

# jonathan = Student.new("Name" => "Jonathan Milgrom") ==>return "Jonathan Milgrom"
# jonathan = Student.new{("Name" => "Jonathan Milgrom")} ==>return "Jonathan Milgrom"

