require 'mta'

RSpec.describe Subway do

let(:trip) { Subway.new }
let(:n_line) { ["Times Square", "34th", "28th-N", "23rd", "Union Square",  "8th"] }
let(:l_line) { ["8th", "6th", "Union Square", "3rd", "1st"] }
let(:six_line) { ["Grand Central", "33rd", "28th-6", "23rd", "Union Square", "Astor Place"] }

  it "should tell the user what stop they enter" do
    expect(trip.enter("Times Square", n_line)).to eq("You're at Times Square")
  end

  it "should tell the user what stop they exit" do
    expect(trip.exit("8th", l_line)).to eq("You will exit at 8th")
  end

  # it "should notify the user of the start index" do
  #   trip.enter("34th", n_line)
  #   trip.exit("8th", l_line)
  #   expect(trip.start()).to eq(1)
  # end

  # it "should notify the user of the stop index" do
  #   trip.enter("Times Square", n_line)
  #   trip.exit("8th", l_line)
  #   expect(trip.end()).to eq(0)
  # end

  it "should notify the user how many stops" do
    trip.enter("Times Square", n_line)
    trip.exit("8th", l_line)
    expect(trip.length()).to eq(6)
  end

end
