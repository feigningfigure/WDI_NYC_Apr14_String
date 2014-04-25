require_relative '../classes/student'
require_relative '../db/students'

# class name
describe "Student" do
  # run this before all the tests
  before :all do
    $joe_hash = $students[0]
    $joe = Student.new($joe_hash)
  end

  # expected behavior
  it "should have a name" do
    $joe.name.should eq($joe_hash["Name"])
  end

  # method name
  describe "#to_s" do
    # expected behavior
    # better test...
    it "should display the name of that student" do
      $joe.to_s.should eq("My name is #{$joe_hash["Name"]}")
    end

  end

end
