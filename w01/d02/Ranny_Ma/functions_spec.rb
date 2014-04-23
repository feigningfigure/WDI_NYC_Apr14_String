require_relative 'functions.rb'

describe "the 'sqrt' method" do
 it "should return 'false' for negative numbers" do
  #the code you wish would work
  sqrt(-100).should eq(false)
  end
end

describe "the 'square' method" do
  it "should return the squre of a number" do
    square(5).should eq(25)
  end
end

describe "the 'double_of_string' method" do
  it "should print the string twice" do
    double_of_string("hello").should eq("hellohello")
  end
end
