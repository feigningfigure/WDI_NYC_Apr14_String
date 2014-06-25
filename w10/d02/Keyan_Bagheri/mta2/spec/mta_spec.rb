require 'mta'

describe Kiosk do

  let(:computer) { Kiosk.new}

  it "should exist" do
    expect(Kiosk.new).to be_a(Kiosk)
  end

  it "should allow user to input departing stop" do
    expect(computer.departing_stop("Times Square")).to eq("Times Square")
  end

  it "should allow user to input aparting stop" do
    expect(computer.arriving_stop("Times Square")).to eq("Times Square")
  end

  it "should tell a user if departure input is not valid" do
    expect(computer.departing_stop("Mornington Crescent")).to eq("That is not a valid stop. Please try again.")
    expect(computer.arriving_stop("Mornington Crescent")).to eq("That is not a valid stop. Please try again.")
  end

  it "should figure out which train lines the stop is on" do
    computer.find_train_lines("Times Square").should eq(["N", "Q"])
  end

  it "should figure out if both stops are on the same line" do
    arrive = computer.find_train_lines("Times Square")
    depart = computer.find_train_lines("34th")
    computer.check_for_same_line(depart, arrive).should eq(["N"])
  end

  # it "should figure out if both stops are on different lines" do
  #   arrive = computer.find_train_lines("Times Square")
  #   depart = computer.find_train_lines("33rd")
  #   computer.check_for_same_line(depart, arrive).should eq(false)
  # end

  it "should return the position number of stop on a line" do
    computer.find_stop_number("N","Times Square").should eq(1)
  end

  it "should count the number of stops from one stop to the next" do
    stop1 = "6th"
    stop2 = "1st"
    lines1 = computer.find_train_lines(stop1)
    lines2 = computer.find_train_lines(stop2)
    same_line = computer.check_for_same_line(lines1,lines2)
    number1 = computer.find_stop_number(same_line[0],stop1)
    number2 = computer.find_stop_number(same_line[0],stop2)
    computer.find_stops_between(number1,number2).should eq(3)
  end

  it "should tell if you need a transfer" do
    arrive = computer.find_train_lines("Times Square")
    depart = computer.find_train_lines("33rd")
    computer.check_for_same_line(depart, arrive).should eq("This trip requires a transfer")
  end


end