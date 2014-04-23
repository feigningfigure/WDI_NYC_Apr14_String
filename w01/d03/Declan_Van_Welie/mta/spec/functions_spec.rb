require_relative '../helper_functions'

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
