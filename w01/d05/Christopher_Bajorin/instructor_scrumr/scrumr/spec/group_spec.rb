require_relative 'spec_helper'

describe "Group" do

  it "should contain a list of student objects" do

    $group1.students[0].class.should be(Student)
  end

  describe "#add_students" do

    it "should respond to .add_students" do
      ($group1.respond_to? :add_students).should be(true)
    end

    it "should add students to the @students array" do
      $group1.students.length.should_not_be(0)
    end
  end



  #
  it "should collect email addresses of students" do
    # wishful thinking code
    pending
  end

  it "should randomize the information passed into it" do
    # wishful thinking code
    pending
  end

  it "should know to check its group size" do
    pending
  end

  it "should not put students in the same instructor group as before" do

  end

  it "should have an instructor associated with it" do

  end

end
