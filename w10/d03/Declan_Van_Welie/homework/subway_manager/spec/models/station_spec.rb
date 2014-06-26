require 'spec_helper'

describe Station do
  # pending "add some examples to (or delete) #{__FILE__}"

  # it "has something once created to begin with" do
  #   expect(Station.count).to eq 0
  # end

  #   it "has subway_lines through stops" do
  #     one_station = Station.where(name: "1")
  #   expect(one_station.subwaylines).to eq 0
  # end

  it "has stations" do
    expect(Station.count).not_to eq 0
  end

  it "has subwaylines through stops" do
    one_station = Station.find_by_id(1)
    expect(one_station.subway_lines.count).to eq 2
  end

  it "has an address" do
    station = Station.find_by_id(1)
    expect(station.address).to eq "Smith St & Bergen St At Ne Corner (To Manhattan And Queens Only)"
  end


    end
