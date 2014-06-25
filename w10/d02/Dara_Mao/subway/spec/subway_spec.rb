require 'subway'

RSpec.describe Subway do

  it "should take a subway line and a station" do
    subway = Subway.new
    expect(subway).to be_a(Subway)
  end

  it "should return error message if the station doesn't exist on this line" do
    subway = Subway.new
    no_station = subway.station_diff("l_line", "Time Square", "n_line", "34th")
    expect(no_station).to eq("Please enter a valid station")
  end

  it "should return the number of stops between station on and off" do
    subway = Subway.new
    diff = subway.station_diff("l_line", "6th", "n_line", "34th")
    expect(diff).to eq(4)
  end

end
