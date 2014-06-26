require 'mta'

# RSpec.describe Mta do

  # it "should contain an array of stops" do
  #   n_line = Mta.new(n_line)
  #   n_line.stops = ["Times Square", "34th", "28th East", "23rd East", "Union Square East",  "8th East"]
  #   expect(n_line.stops).to eq(["Times Square", "34th", "28th East", "23rd East", "Union Square East",  "8th East"])
  # end

# let(:test) { Mta.new("Times Square", "34th", "nline") }

  # it "should take three arguments" do
  #   expect(test).to be_a(Mta)
  # end

describe "the 'count_stops_one_line' function" do

  it "should return 2 for 'Times Square' and '28th East' for 'N Line'" do
    expect(count_stops_one_line("Times Square", "28th East", "n_line")).to eq(2)
  end
end
  #   it "should return nil for 'Times Square' and '4th avenue' for 'N Line'" do
  #   expect(count_stops_one_line("Times Square", "4th avenue", "n_line")).to eq(nil)
  # end
describe "the 'count_multi_lines' function " do

  context "with 'Time Square', '28th East', and 'N line' and 'N line' " do
    it "should return the number of stops in between" do
        expect(count_multi_lines("Times Square", "28th East", "n_line", "n_line")).to eq(2)
    end
end


# describe "the 'count_multi_lines' function " do
#  context "with '34th', '6th', and 'N line' and 'l line' " do
# it "should return the number of stops in between"
#     do
#       expect(count_multi_lines("34th", "6th", "n_line", "l_line" )).to eq(5)
#     end

#   end

end


