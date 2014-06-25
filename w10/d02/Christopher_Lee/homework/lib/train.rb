class Train
  attr_accessor :subway_system

  def initialize
    @subway_system = {
      :n_line => ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square",  "8th Street/NYU"],
      :l_line => ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"],
      :six_line =>  ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"],
      :q_line => ["Times Square", "Herald Square", "Union Square", "Canal St."]
    }
  end

  def count_stops(starting_stop, ending_stop, line)
    number_of_stops = (@subway_system[line.to_sym].index(starting_stop) - @subway_system[line.to_sym].index(ending_stop)).abs
    return number_of_stops
  end

  def calculate_trip_length(starting_stop, ending_stop, lines)
    total_stops = count_stops(starting_stop, "Union Square", lines[0]) + count_stops("Union Square", ending_stop, lines[1])
  end

end


# count_stops(@n_line,"Times Square", "8th Street/NYU")
