require_relative 'spec_helper'

describe "Scrumr" do

  before :all do
    seed_num = rand(1..20)
    puts "Random number #{seed_num}"
    $app.number_of_groups = seed_num
    # we know this is 6
    $correct_group_size = $students.length/seed_num
  end

  describe "#build_groups" do
    it "should create an array of Group objects" do
      $app.groups.first.class.should be(Group)
    end
  end

  describe "#get_group_size" do

    it "should return the number of students in each group based on a given number of groups" do
      $app.get_group_size.should eq($correct_group_size)
    end

  end

end
