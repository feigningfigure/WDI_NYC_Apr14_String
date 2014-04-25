# require './../helper_functions.rb'
require_relative '../helper_functions.rb'
my_func

puts $x

describe "the 'difference_between' function"
it "should tell me the difference between two integers."
  do
    difference_between(10,5).should eq(5)
  end
end
