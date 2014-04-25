require_relative '../classes/student'
require_relative '../classes/group'
require_relative '../classes/scrumr'
require_relative '../db/students'

# run this before all the tests
$joe_hash = $students[0]
$joe = Student.new($joe_hash)

$group1 = Group.new
some_random_selection_of_students = $students.pop(rand(1...$students.length))
$group1.add_students(some_random_selection_of_students)

$app = Scrumr.new
