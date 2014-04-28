require_relative 'classes/student'
require_relative 'db/students'

$joe_hash = $students[0]
$joe = Student.new($joe_hash)
$joe
$joe.name

# array_of_student_objects = []

# $students.each do |student_hash| 
# 	array_of_student_objects << Student.new (student_hash)
# end

p array_of_student_objects