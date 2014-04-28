require '../classes/student'
require '../classes/group'
require '../db/students'


#class name
describe "Student" do
  #run this before all my tests
  before :all do
    $joe_hash= $students[0]
    $joe = Student.new($joe_hash)
  end

  it "should have a name" do
   $joe.name.should eq($joe_hash["Name"]) #test to be true
  end



#create to_s method
  describe "#to_s" do
    #this is the expected behavior
    # it "should display 'My name is 'Joe Park'" do
    #   $joe.to_s.should eq("My name is Joe Park")
    # end
    #this is a better test. (rspec modification #2); same as above
    it "should display the name of that student." do
      $joe.to_s.should eq("My name is #{$joe_hash["Name"]}")
    end
  end
end


