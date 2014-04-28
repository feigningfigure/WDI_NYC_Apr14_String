require_relative 'student'
require_relative 'students'

$array_of_student_objects = []

$students.each do |student_hash|
  array_of_student_objects << Student.new(student_hash)
end

p array_of_student_objects
