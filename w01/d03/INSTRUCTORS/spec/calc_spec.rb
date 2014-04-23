require_relative '../calc.rb'
require_relative 'spec_helper'

describe '#get_user_choice' do
  it "shows user a list of operations: 'enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide'" do
    output = capture_stdout { get_user_choice }
    output.should eq("enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide")
  end
end

describe "#add" do
  it "should add 2 numbers together" do
    add(5,5).should eq(10)
  end
end

describe "#subtract" do
  it "should subtract the first number from the second" do
    subtract(5,5).should eq(0)
  end
end

describe "#multiply" do
  it "should multiply two numbers" do
    multiply(5,5).should eq(25)
  end
end

describe "#divide" do
  it "should divide the first number from the second" do
    divide(10,5).should eq(2)
  end

  it "should return 'Infinity' for division by 0" do
    divide(10,0).should eq('Infinity')
  end
end
