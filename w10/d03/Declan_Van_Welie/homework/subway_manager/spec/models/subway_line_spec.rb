require 'spec_helper'

describe SubwayLine do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has 24 lines" do
    expect(SubwayLine.count).to eq 24
  end

  it "has stations through stops" do
    one_line = SubwayLine.find_by_name("1")
    expect(one_line.stations.count).not_to eq 0
  end

  it "has a seeded subwayline" do
    one_line = SubwayLine.find_by_name("1")
    expect(one_line.color).to eq "red"
  end


end
