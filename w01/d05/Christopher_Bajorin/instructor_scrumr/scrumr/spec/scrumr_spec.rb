require_relative 'spec_helper'

describe "Scrumr" do

  describe"#get_group_size" do

    before :all do
      $app.number_of_groups = 4
    end

    it "should return the number of students in each group based on a given number of groups" do
      $app.get_group_size.should eq(6)
    end

  end

end
