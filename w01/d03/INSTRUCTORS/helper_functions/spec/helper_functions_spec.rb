require_relative '../helper_functions.rb'

describe "the 'difference_between' function" do
  it "should tell me the difference between two integers" do
    difference_between(10,5).should eq(5)
  end
end
