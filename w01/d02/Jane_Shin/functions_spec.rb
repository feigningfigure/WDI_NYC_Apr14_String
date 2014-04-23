require_relative 'functions.rb'

describe "the 'square' method" do 
	it "shoudl return the square of a numnber" do
		square(5).should eq(25)
	end
end

describe "the 'double_of_string' method" do
	"should print the string twice" do
		double_of_string("hello").should eq("hellohello")
		end
	end
