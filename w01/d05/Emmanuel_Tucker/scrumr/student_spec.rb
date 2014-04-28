require ' ../classes/student'
require ' ../db/students.rb'

#class name
describe "Student" do
  # run this before all the tests
  before :all do
    $joe_hash = $students[0]
    $joe = Student.new
    #new creates an insists of a class (student)


    it "should have a name" do
      $joe.name.should eq($joe."name") #
  end

# method name
  describe "#{to_s}" do
#expected behavior
it "should display 'My name is 'joe park"
    $joe.to_s.should eq("My name is Joe Park")

  end
  #better test than above ?
   it "should display the name of  that student" do
    $joe.to_s.should eq("My name is #{"name"}")
  end
end
