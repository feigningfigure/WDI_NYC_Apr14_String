require 'spec_helper'

# run rake db:seed for your test environment

describe "seedfile" do
  it "correctly seeds the subway lines" do
    expect(SubwayLine.all.count).to eq(24)
  end

  it "correctly seeds one station" do
    expect(Station.all.count).to eq(24)
  end
end
