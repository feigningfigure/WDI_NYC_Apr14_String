require_relative './03-process.rb'
describe "ClotheMachine" do

  it "item should be on top shelf of wardrobe if item color is green" do
    if item.color == "green" then top.shelf.include?(item) be true
  end

   it "item should be on middle shelf of wardrobe if item color is blue" do
    if item.color == "blue" then middle.shelf.include?(item) be true
  end

 it "item should be on middle shelf of wardrobe if item color is blue" do
    if item.type == "pants" then bottom.shelf.include?(item) be true
  end

   it "item should not in a wardrobe if item color not green or blue or it is not pants" do
    	if item.color !== "blue" &&
    	   item.color !== "green" &&
    	   item.type !== "pants"
    	then top.shelf[item] == nil
    		 middle.shelf[item] == nil
    		 bottom.shelf[item] == nil
    be true
  end

  


#testing types
  
end