require 'spec_helper'
require_relative '../lib/mta'

# This describe states what we're about to test
describe "stop_count function" do
# Context describes what conditions we're under
  context "when the user provides a valid parameters" do
#'it' is the actual test that checks the function
    it "should return the number of stops in between" do
      expect(stop_count "n", "Times Square", "23rd").to eq(3)
    end
  end
  context "when the user provides a invalid parameters" do

    it "should tell the user they entered an incorrect parameter" do
      expect(stop_count "n", "blah", "bloop").to eq("Incorrect entry")

    end
  end
end

describe "detect_tranfer function" do
  context "when each stop is on a different line" do
    it "should say that a transfer is required" do
      expect(detect_transfer "n", "34th"

    end
  end

  context "when each stop is on the same line" do
    it "should tell the user a transfer is not needed" do
    end
  end
end



# describe "tranfer_needed" do

#   it "should return false if a transfer is not needed"
#   it "should return true if a transfer is needed"



# end
