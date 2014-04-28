require_relative 'spec/spec_helper'
#class

describe "Group" do

	it "should contain a list of list of student names" do
		#future code here
		$group1.students[0].class.should be(Student)
	end

describe "#add_students" do
	it "should respond to .add_students" do
		($group1.respond_to? :add_students).should be(true)
		#parantheses were added to force the test, it could be hard for rspec if they're are a lot of .methods before the .should
	end

	it
	
	end

end	

	it "should collect email addresses of students" do
		#wishing thinking code
		pending
	end

	it "should randomize the information passed into it" do
		#wishing thinking code
		pending
	end

	it "should know to check its group size" do
		pending
	end

	it "should not put students in the same instructor group as before"
		do
	end

	it "should be associated with an instructor"
		pending
	end


end