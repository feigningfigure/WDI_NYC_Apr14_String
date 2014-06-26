require 'rails_helper'

RSpec.describe Station, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

    describe Station do
  		it {should have_many(:subway_lines) }	
	end

	describe Station do
		it {should have_many(:stops) }	
	end

  	it "should have populated correct amount stations" do
    	expect(Station.all.length).to eq(1904)
  	end
end
