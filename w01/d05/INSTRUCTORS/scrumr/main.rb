require_relative 'classes/student'
require_relative 'db/students'

array_of_student_objects = []

$students.each do |student_hash|
  array_of_student_objects << Student.new(student_hash)
end

p array_of_student_objects
