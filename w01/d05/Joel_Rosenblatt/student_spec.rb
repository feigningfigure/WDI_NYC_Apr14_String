require_relative 'student'
require_relative 'students'

describe "Student" do

  before :all do
    $joe_hash = $students[0]
  end
def in_groups(num_groups)
  return [] if num_groups == 0
  slice_size = (self.size/Float(num_groups)).ceil
  self.each_slice(slice_size).to_a
end
  describe "#to_s" do
    it "should display 'My name is 'Joe Park''" do
      $joe.to_s
    end

  end
end
