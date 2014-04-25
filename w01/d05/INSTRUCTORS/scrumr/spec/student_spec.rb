require_relative '../classes/student'
require_relative '../db/students.rb'

# class name
describe "Student" do
  # run this before all the tests
  before :all do
    $joe_hash = $students[0]
    $joe = Student.new
  end
  # method name
  describe "#to_s" do

    # expected behavior
    it "should display 'My name is Joe Park" do
      $joe.to_s.should eq("My name is Joe Park")
    end

  end

end
