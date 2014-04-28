

#class name
describe "Student" do
	#run this before all the tests
	# before :all do
	# 	$joe_hash = $students[0]
	# 	$joe = Student.new($joe_hash)
	#end
#method name
	describe "#to_s" do
		#exptect behavior
		# it "should display 'My name is 'Joe Park''" do
		# 	$joe.to_.should eq("My name is Joe Park")
		# end
		# better test than before
		it "should display the name of that student" do
			$joe.to_s.should eq("My name is #{$joe_hash['Name']}")
		end
	end
end



