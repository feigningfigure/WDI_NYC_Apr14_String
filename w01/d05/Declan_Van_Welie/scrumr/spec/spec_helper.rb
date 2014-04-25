require_relative '../classes/student'
require_relative '../classes/group'
require_relative '../db/students'


# run this before all the tests
  # before :all do
    $joe_hash = $students[0]
    $joe = Student.new($joe_hash)
  end

  $group1 = Group.new
