require_relative '../classes/student'
require_relative '../classes/group'

# class name
describe "Student" do 

	# run this before all the tests
	before :all do 
		$joe_hash = $students[0]
		$joe = Student.new($joe_hash)
	end

	it "should have a name" do 
		$joe.name.should eq(@joe_hash["Name"])
	end

	# method name
	describe "#to_s" do 

		# # expected behavior
		# it "should display 'My name is 'Joe Park'" do 
		# 	$joe.to_s.should  eq("My name is Joe Park")

		# better test than above?
		it "should display the name of that student" do 
			$joe.to_s.should eq("My name is #{$joe_hash["Name"]}")

		end


	end

end

describe "Group" do

	it "should contain a list of student names" do
		#future code here
	end

	it "should collect email addresses of students" do

	end

	it "should randomize the information passed into it" do
		#wishful thinking code
	end

end
