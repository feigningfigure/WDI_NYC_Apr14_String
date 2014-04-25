require_relative 'spec_helper'

# class name
describe "Student" do

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

# class


