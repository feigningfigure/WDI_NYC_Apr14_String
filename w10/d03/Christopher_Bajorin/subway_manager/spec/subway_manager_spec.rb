require 'spec_helper'

describe "Seed" do
  it "should populate the database correctly" do
    expect(Line.all.length).to eq(24)
    expect(Station.all.length).to eq(1904)
  end

end
