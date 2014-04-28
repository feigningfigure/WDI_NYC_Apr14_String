require_relative 'new_mta_helperfunctions'

describe "the 'count_stops' function" do

  it "should return 2 for 'Times Square' and '28th' for N Line" do
    how_many_stops("Times Square", "28th").should eq(2)
  end

  it "should return nil if stops are not on the same line" do
    how_many_stops("Times Square", "3rd").should eq(nil)
  end

end

describe "the 'need_to_transfer?' function" do

  it "should return false for stops on the same line 'Times Square' and '28th'" do
    how_many_stops("Times Square", "28th").should eq(false)
  end

  it "should return true if stops are not on the same line" do
    how_many_stops("Times Square", "3rd").should eq(true)
  end

end

def count_stops(start_name, ending_name)
  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
end

def need_to_transfer?(start_name, ending_name)
  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases


end


