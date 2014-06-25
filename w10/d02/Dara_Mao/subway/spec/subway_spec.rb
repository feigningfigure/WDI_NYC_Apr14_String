require 'subway'

RSpec.describe Subway do

  it "should take a subway line and a station" do
    subway = Subway.new
    expect(subway).to be_a(Subway)
  end

  it "should return true if the line contains a station on" do
    subway = Subway.new
    index_on = subway.subway_on("n_line", "Grand Central")
    expect(index_on).to eq("Please enter a valid station")
  end

  it "should return true if the line contains a station off" do
    subway = Subway.new
    index_off = subway.subway_on("n_line", "34th")
    expect(index_off).to eq(1)
  end

  it "should return the number of stops between station on and off" do
    subway = Subway.new
    subway_on = subway.subway_on("n_line", "8th")
    subway_off = subway.subway_off("n_line", "34th")
    diff = subway.station_diff(subway_on,subway_off)
    expect(diff).to eq(4)
  end

 # it "should return the number of stops between station on and off" do
 #    subway = Subway.new
 #    subway_on = subway.subway_on("l_line", "1st")
 #    subway_off = subway.subway_off("n_line", "34th")
 #    diff = subway.station_diff(subway_on,subway_off)
 #    expect(diff).to eq(4)
 #  end

end
