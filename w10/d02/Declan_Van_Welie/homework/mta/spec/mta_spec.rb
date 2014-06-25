require 'awesome_print'

require 'mta'

describe Subway do

it "should give distance when given begin and end for one line" do

expect(Subway.count_stops("n_line", "Times Square", "23rd")).to eq(3)

end

it "should give distance when given begin and end for two lines" do

expect(Subway.count_stops("n_line", "Times Square", "six_line", "Astor Place")).to eq(5)

end


it "should give distance when given begin and end for either one or two lines" do

expect(Subway.count_stops("n_line", "Times Square", "23rd")).to eq(3)

end


it "should gracefully handle invalid user input" do

expect(Subway.count_stops("f_line", "Times Square", "six_line", "Astor Place")).to eq("That line doesn't exist. Please try again.")

end

it "should allow for multiple intersection points" do

expect(Subway.count_stops("n_line", "34th", "six_line", "Astor Place")).to eq(4)

end

end
