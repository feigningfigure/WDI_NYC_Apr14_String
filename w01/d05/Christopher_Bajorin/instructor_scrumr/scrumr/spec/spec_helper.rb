require_relative '../classes/student'
require_relative '../classes/group'
require_relative '../db/students'
require_relative '../classes/scrumr'

# run this before all the tests
$joe_hash = $students[0]
$joe = Student.new($joe_hash)

$group1 = Group.new
$group1.add_students

$app = Scrumr.new
