require 'rails_helper'
require 'spec_helper'
require 'shoulda-matchers'

RSpec.describe Transfer, :type => :model do
  it "should belong to" do
    should belong_to :subway_line
  end

  it "should belong to" do
    should belong_to :station
  end

end
