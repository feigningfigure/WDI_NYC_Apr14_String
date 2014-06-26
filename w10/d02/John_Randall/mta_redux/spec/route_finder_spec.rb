require 'route_finder'

RSpec.describe RouteFinder do

  seed_three_lines = {
    n_line: ['Times Square', '34th', '28th_n', '23rd_n', 'Union Square', '8th_n'],
    l_line: ['8th_l', '6th', 'Union Square', '3rd', '1st'],
    six_line: ['Grand Central', '33rd', '28th_six', '23rd_six', 'Union Square', 'Astor Place']
  }

  seed_four_lines = {
    n_line: ['Times Square_n', '34th', '28th_n', '23rd_n', 'Union Square', '8th_n'],
    l_line: ['8th_l', '6th', 'Union Square', '3rd', '1st'],
    six_line: ['Grand Central', '33rd', '28th_six', '23rd_six', 'Union Square', 'Astor Place'],
    q_line: ['Times Square_q', 'Herald Square', 'Union Square', 'Canal St.']
  }

  seed_multiple_intersections = {
    n_line: ['Times Square', '34th', '28th_n', '23rd_n', 'Union Square', '8th_n'],
    l_line: ['8th_l', '6th', 'Union Square', '3rd', '1st'],
    six_line: ['Grand Central', '33rd', '28th_six', '23rd_six', 'Union Square', 'Astor Place'],
    q_line: ['Times Square', 'Herald Square', 'Union Square', 'Canal St.']
  }

  let(:three_lines) { RouteFinder.new(seed_three_lines) }
  let(:four_lines) { RouteFinder.new(seed_four_lines) }


  it "should count the stops on a single designated line moving inbound" do
    result = three_lines.count_stops_on_designated_line({line: :n_line, start_station: '34th', end_station: '23rd_n'})
    expect(result).to be(2)
    result = three_lines.count_stops_on_designated_line({line: :l_line, start_station: '8th_l', end_station: '1st'})
    expect(result).to be(4)
  end

  it "should count the stops on a single designated moving outbound" do
    result = three_lines.count_stops_on_designated_line({line: :l_line, start_station: '1st', end_station: '8th_l'})
    expect(result).to be(4)
  end

  it "should count the stops on a single designated through Union Square (transfer station)" do
    result = three_lines.count_stops_on_designated_line({line: :six_line, start_station: '33rd', end_station: 'Union Square'})
    expect(result).to be(3)
  end

  it "should figure out the direction from station index numbers" do
    result = three_lines.direction(1, 5)
    expect(result).to be(:inbound)
    result = three_lines.direction(4, 2)
    expect(result).to be(:outbound)
  end

  it "should detect what line stops are on" do
    result = three_lines.detect_lines('28th_n')
    expect(result).to eq([:n_line])
    result = three_lines.detect_lines('3rd')
    expect(result).to eq([:l_line])
    result = three_lines.detect_lines('Union Square')
    expect(result).to eq([:n_line, :l_line, :six_line])
  end

   it "should detect a shared line for two stops" do
    result = three_lines.detect_shared_line({start_station: '34th', end_station: '23rd_n'})
    expect(result).to eq(:n_line)
    result = three_lines.detect_shared_line({start_station: '8th_l', end_station: '1st'})
    expect(result).to eq(:l_line)
    result = three_lines.detect_shared_line({start_station: 'Union Square', end_station: '8th_l'})
    expect(result).to eq(:l_line)
    result = three_lines.detect_shared_line({start_station: '33rd', end_station: 'Union Square'})
    expect(result).to eq(:six_line)
  end


  it "should count the stops on a single undesignated line" do
    result = three_lines.count_stops_on_undesignated_line({start_station: '34th', end_station: '23rd_n'})
    expect(result).to be(2)
    result = three_lines.count_stops_on_undesignated_line({start_station: '8th_l', end_station: '1st'})
    expect(result).to be(4)
  end

  it "should count the stops on a single undesignated line moving outbound" do
    result = three_lines.count_stops_on_undesignated_line({start_station: '1st', end_station: '8th_l'})
    expect(result).to be(4)
  end

  it "should count the stops on a single undesignated line through Union Square (transfer station)" do
    result = three_lines.count_stops_on_undesignated_line({start_station: '33rd', end_station: 'Union Square'})
    expect(result).to be(3)
  end

  it "should identify transfer station between two lines" do
    result = three_lines.find_transfer_station_between_two_lines(:l_line, :six_line)
    expect(result).to eq('Union Square')
  end

  it "should counts the stops through a single transfer point" do
    result = three_lines.count_stops_with_transfer({start_station: '33rd', end_station: '8th_l'})
    expect(result).to be(5)
  end

  it "should counts the stops without identifying transfer, with or without transfer" do
    result = three_lines.count_stops({start_station: '33rd', end_station: '8th_l'})
    expect(result).to be(5)
    result = three_lines.count_stops({start_station: '1st', end_station: '8th_l'})
    expect(result).to be(4)
  end

  it "should validate user input and reject non-stations, and handle it gracefully" do
    return false
  end

  it "should work once the Q line has been added" do
    result = four_lines.count_stops({start_station: '34th', end_station: 'Astor Place'})
    expect(result).to be(4)
    result = four_lines.count_stops({start_station: 'Herald Square', end_station: '8th_n'})
    expect(result).to be(2)
  end



  it "should identify permutations through multiple intersection points" do
    return false
  end

  it "should compare multiple permutations, count the stops, and return the most efficient (least stops) one." do
    return false
  end

end