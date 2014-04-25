
require_relative '../classes/student'
require_relative '../classes/group'
require_relative '../db/students'

# class name
describe "Student" do
  # # run this before all the tests
  # before :all do
  #   $joe_hash = $students[0]
  #   $joe = Student.new($joe_hash)
  # end

  it "should have a name" do
    $joe.name.should eq($joe_hash["Name"])
  end

  # method name
  describe "#to_s" do

    # expected behavior
    # it "should display My name is Joe Park" do
    #   $joe.to_s.should eq("My name is Joe Park")
    # end

it "should display the name of that student" do
  $joe.to_s.should eq("My name is #{$joe_hash["Name"]}")

    end

  end

end




# require_relative '..classes/student'
# require_relative '../db/students.rb'
# # class name
# describe "Student" do
#   #Run this before all the tests
#     before :all do
#       $joe_hash = $students[0]
#       $joe = Student.new
#     end
#   #method name
#   describe "#to_s"
#   #expected behavior
#     it "Should display 'My name is Joe Park'" do
#       $joe.to_s.should eq("My name is Joe Park")
#     end

#   end

# end
