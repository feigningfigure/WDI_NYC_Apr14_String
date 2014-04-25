require_relative 'spec_helper'

describe "Scrumr" do

  before :all do
    $number_of_groups = rand(1..20)
    $app.group_size = $number_of_groups
    $app.set_group_size
    puts "Random number #{$number_of_groups}"
    $app.number_of_groups = $number_of_groups

    # we know this is 6
    $correct_group_size = $students.length/$number_of_groups
  end

  describe "#build_groups" do

    before :all do
      $app.build_groups
    end

    it "should create an array of Group objects" do
      $app.groups.first.class.should be(Group)
    end

    it "should create the right number of groups" do
      $app.groups.length.should eq($number_of_groups)
    end
  end

  describe "#set_group_size" do

    it "should return the number of students in each group based on a given number of groups" do
      $app.set_group_size.should eq($correct_group_size)
    end

    it "should not allow you to re-write group_size" do
      pending "TODO: scrumr.rb line 4"
    end

  end

end
