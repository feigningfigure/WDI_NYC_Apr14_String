require_relative '../classes/student'
require_relative '../db/students'

#class name
describe "Student" do
  #run this before all the tests
  before :all do
    $joe_hash = $students[0]
    $joe = Student.new
  end

  # expected behavior
  it "should have a name" do
    $joe.name.should eq()
  end
  #method name
  describe "#to_s" do
    # expected behavior


    it "should display the name of that student" do
      $joe.to_s.should eq("My name is #{$joe_hash["Name"]}")
    end
end
end

describe "Group" do

  it "should contain a list of student names" do
    # future code here
  end

  it "should collect email addresses of students" do
    # wishful thinking code
    pending
  end

  it "should randomize the information passed into it" do
    # wishful thinking code
    pending
  end
end

it "should know how to check its group size"
  pending
end

it "should not put students in the same intructor group as before" do
end

it "should have an instructor associated with it" do
  end
