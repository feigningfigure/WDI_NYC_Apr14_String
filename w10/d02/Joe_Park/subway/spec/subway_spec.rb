require 'subway'

describe Subway do 

let(:trip) { Subway.new }
let(:n_line) { ["Times Square", "34th", "28th N", "23rd N", "Union Square",  "8th N"] }
let(:l_line) { ["8th L", "6th", "Union Square", "3rd", "1st"] }
let(:six_line) { ["Grand Central", "33rd", "28th Six", "23rd Six", "Union Square", "Astor Place"] }

  it "should recognize where the user is starting or ending" do
    expect(trip.location("Times Square", n_line)).to eq(0)
  end

  it "should determine how many stops the user has to the destination on the same line" do
    expect(trip.distance("Times Square", n_line, "8th N", n_line)).to eq(5)
  end

  it "should determine how many stops the user has to travel including transfer" do
    expect(trip.distance("Times Square", n_line, "Grand Central", six_line)).to eq(8)
  end

end