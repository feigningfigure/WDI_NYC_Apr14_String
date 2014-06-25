require 'awesome_print'

require 'train'

describe Train do

    let(:new_train){Train.new}

    it "should count the number of stops between two stations" do
        expect(new_train.count_stops("Times Square", "8th Street/NYU", "n_line")).to eq(5)
    end

    it "should count the number of stops between two stations on two different lines" do
        expect(new_train.calculate_trip_length("Times Square", "1st Ave", ["n_line","l_line"])).to eq(6)
    end

    it "should count the number of stops between two stations on two different lines including the six train" do
        expect(new_train.calculate_trip_length("Times Square", "Grand Central", ["n_line","six_line"])).to eq(8)
    end

    it "should count the number of stops between two stations on two different lines including the Q train" do
        expect(new_train.calculate_trip_length("Times Square", "Times Square", ["n_line","q_line"])).to eq(6)
    end



end
