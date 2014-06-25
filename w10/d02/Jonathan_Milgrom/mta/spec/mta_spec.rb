require 'awesome_print'
require 'mta'

require 'pry'

describe Mta do

	# let(:detective) {Hangman.new("detective")}
	let(:trip_one) {Mta.new("N line", "times square", "n line", "8th")}
	let(:trip_two) {Mta.new("six line", "grand central", "six line", "union_square")}
	let(:trip_three) {Mta.new("N line", "times square", "six line", "grand central")}

	it "should take 4 inputs" do
		trip = Mta.new("1","2","3","4")
		expect(trip).to be_a(Mta)
	end

	it "should be able to access TRAINS constand" do
		expect(Mta::TRAINS[:n_line]).to eq([:times_square, :"34th", :"28th", :"23rd", :union_square, :"8th"])
	end


	it "should return the number of stops for a single line trip" do
		expect(trip_one.stops).to eq(5) 
	end 

	it "should return the number of stops for a single line trip" do
		expect(trip_two.stops).to eq(4) 
	end 

	it "should return the number of stops for a multi-line trip" do

		expect(trip_three.stops).to eq(8)
	end

end