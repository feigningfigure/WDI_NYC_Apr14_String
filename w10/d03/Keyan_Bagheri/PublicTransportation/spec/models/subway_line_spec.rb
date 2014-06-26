require 'spec_helper'

describe SubwayLine do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:color) }

  it "should have stations" do
    SubwayLine.all.sample.should have_at_least(1).stations
  end
end
