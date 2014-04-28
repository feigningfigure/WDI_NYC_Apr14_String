require_relative '../classes/student'
require_relative '../db/students'

array_of_student_object 

$students.each do |student_hash|
	array_of_student_object << Student.new(student_hash)
end

p array_of_student_object

$joe_hash = $students[0]
$joe = Student.new($joe_hash)
$joe
$joe.name