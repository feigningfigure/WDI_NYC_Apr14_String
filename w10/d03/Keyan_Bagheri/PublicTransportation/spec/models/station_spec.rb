require 'spec_helper'

describe Station do
  it { should validate_presence_of(:address) }

  it "should have subway lines" do
    Station.all.sample.should have_at_least(1).subway_lines
  end
end