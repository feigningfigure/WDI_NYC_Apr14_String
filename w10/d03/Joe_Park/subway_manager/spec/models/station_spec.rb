require 'rails_helper'

RSpec.describe Station, :type => :model do
  it "should require an address" do
    validate_presence_of :title 
  end

  it "should have many subway_lines" do
    should have_many(:subway_lines)
  end

end