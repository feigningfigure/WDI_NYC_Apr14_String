require 'rails_helper'

RSpec.describe Stop, :type => :model do
  it "should have a subway_line id" do
    validate_presence_of :subway_line_id
  end

  it "should have a station_id" do
    validate_presence_of :station_id
  end

  it "should belong to a station and subway line" do 
    should belong_to :station
    should belong_to :subway_line
  end

end
