require_relative '../helper_functions.rb'

$janes_favorite_colors = ["green", "mauve", "red"]
$omars_favorite_colors = ["green", "ruby red", "periwinkle"]

describe "the 'difference_between' function" do
  it "should tell me the difference between two integers" do
    difference_between(10,5).should eq(5)
  end
end

describe "'array_minus' function" do
  it "should subtract elements of 2nd array from 1st" do
    ($omars_favorite_colors-$janes_favorite_colors).should eq(array_minus($omars_favorite_colors,$janes_favorite_colors))
  end
end

describe "'array_plus' function" do
  it "should combine 1st array with 2nd" do
    ($omars_favorite_colors|$janes_favorite_colors).should eq(array_plus($omars_favorite_colors,$janes_favorite_colors))
  end
end
