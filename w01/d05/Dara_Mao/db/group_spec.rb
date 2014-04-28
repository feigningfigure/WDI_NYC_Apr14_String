require_relative 'spec_helper'

#class
describe "Group" do
  it "should contain a list of student names" do
    #future code here
    #rspec gives yellow code "pending"
    $group.students[0].class.should be(Student)
  end

describe "#add_students" do #these are methods in rspec "describe it should be (should not)"
  it "should have a method that adds students to the group" do
    $group1.add_students
    $group1.students.length.should_not be(0)
  end

  it "should add students to the .studtns array" do

  end

end



  it "should collect email addresses of students" do
    #
  end

  it "should randomize the information passed into it" do
    #
  end

  it "should know how to check its group size" do
    pending
  end

  it "should not put students in the same instructor group as before"do
    pending
  end

  it "should have an instructor associated with it." do
    pending
  end
end
