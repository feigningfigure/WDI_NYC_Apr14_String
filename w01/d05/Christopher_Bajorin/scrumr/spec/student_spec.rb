require_relative '../db/students'
require_relative '../classes/student'

#class name you are testing
describe "Student" do
  #run this before all the tests
  before :all do
    $joe_hash = $students[0]
    $joe = Student.new($joe_hash)
  end

  it "should have a name" do
    $joe.name.should eq($joe_hash["Name"])
  end

  #method name
  describe "#to_s" do

    it "should display the name of that student" do
      $joe.to_s.should eq("My name is #{$joe_hash["Name"]}")
    end

  end

end
