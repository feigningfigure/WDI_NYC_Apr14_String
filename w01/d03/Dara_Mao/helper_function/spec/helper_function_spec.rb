require_relative '../helper_functions.rb'

def my_app
  x = 10
  ["green", "red", "blue"].each do |color|
    x = x + 1
    p [color,x]
  end
end
my_app



# describe "the 'difference_between' function" do
#   it "should tell me the difference between two integers" do
#     difference_between(10,5).should eq(5)
#   end
# end
