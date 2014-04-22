require_relative 'functions.rb'

describe "the 'sqrt' method"
  it "should return 'false' for negative numbers" do
    # the code you wish would work
    sqrt(-100).should eq(false)
  end
end



describe "the 'square' method" do
  it "should return the square of a number" do
    square(5).should eq(25)
  end
end

describe "the 'double_of_string' method" do
  it "shoud print the string" do
    double_of_string("hello")
  end
end
