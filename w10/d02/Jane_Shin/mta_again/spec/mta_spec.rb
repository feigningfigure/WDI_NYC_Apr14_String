require 'mta'

RSpec.describe Mta do


	# let(:n_line) {Mta.instance_variable_get(:@n_line)}
	# let(:new_trip) {Mta.new(subway_lines)}
	
	it "should have six stops on the N line" do
		n_line = Mta.instance_variable_get(:@n_line)
		trip = Mta.new({
	# 	n_line: ["42", "34", "28", "23", "14", "8"],
	# 	six_line: ["42", "33", "28", "23", "14", "ap"],
	# 	l_line: ["8", "6", "14", "3", "1"]
	# })
		expect(trip.count_stops(n_line)).to eq(6)
	end

end