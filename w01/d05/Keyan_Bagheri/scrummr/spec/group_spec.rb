require_relative 'spec_helper'

  describe "Group" do

  	it "should contain a list of student names" do

  	# $group1.students[0].should eq(nil)
  	end

  	describe "#add_students" do

  	it "should respond to .add_students" do
  	($group1.respond_to? :add_students).should be(true)
  	end

  	it "should have a method that adds students to group" do
  	$group1.add_students
  	$group1.students.length.should_not be(0)
  	end

  	end

  	it "should collect email addresses of students" do

  	end

  	it "should randomize the information passed into it" do

  	end

  	it "should know how to check its group size" do

  	end
end