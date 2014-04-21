require_relative './sandwich.rb'
describe "Sandwich" do

  it "should be on sliced bread" do
    Sandwich.bread.sliced?.should be true
  end

  it "should have jelly and peanut butter" do
    Sandwich.ingredients.include? "jelly" and Sandwich.ingredients.include? "peanut butter"
  end

  it "should be put together" do
    Sandwich.bread.closed?.should be true
  end

end
