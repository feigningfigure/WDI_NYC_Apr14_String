require 'rails_helper'

RSpec.describe SubwayLine, :type => :model do
    context "The subway lines have been added to seed file"
      it "has 24 lines" do
          expect(SubwayLine.count).to eq(24)
        end

        it "has stations through stops" do
          one_line = SubwayLine.find_by_name("1")
          expect(one_line.stations.count).to eq(0)
        end

        it "has a the '1 line' which is red" do
          one_line = SubwayLine.find_by_name("1")
          expect(one_line.color).to eq "red"
        end
      end
