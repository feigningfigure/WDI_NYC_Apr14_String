require 'rails_helper'
# require 'shoulda/matchers'

RSpec.describe SubwayLine, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"

  	describe SubwayLine do
  		it {should have_many(:stations) }	
	end

	describe SubwayLine do
		it {should have_many(:stops) }	
	end

	it "should have populated correct amount of subway lines" do
    	expect(SubwayLine.all.length).to eq(24)
  	end
end
