require 'spec_helper'

describe "seed file" do

  it "should have populated correct amount of subway lines" do
    expect(SubwayLine.all.length).to eq(24)
  end

  it "should have populated correct amount stations" do
    expect(Station.all.length).to eq(1904)
  end

end

describe "routes" do

  it "should go to subway lines index" do
    expect(link_to 'subway_lines/index').to eq("subway_lines#index")
  end

  end