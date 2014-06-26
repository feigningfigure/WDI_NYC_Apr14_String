require 'rails_helper'

RSpec.describe SubwayLine, :type => :model do
  it "should require a name" do
    validate_presence_of :name
  end

  it "should have many stations" do
    should have_many(:stations)
  end

  it "should have 24 lines" do 
    expect(SubwayLine.all.length)to eq(24)
  end

end
