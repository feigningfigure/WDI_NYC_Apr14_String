require_relative '../student'

# class name
describe "student" do
  #run this before all the test
  before :all do
    $joe_hash = $Students[0]
    $joe = Student.new

  it "should have a name" do
    $joe.name.should eq($joe_hash["Name"])
  end

  #method name
  describe "#to_s" do
    #expected behavior

    it "should display the name of that student" do
      $joe.to_s.should eq("My name is #{$joe_hash["Name"]}")
    end
end

