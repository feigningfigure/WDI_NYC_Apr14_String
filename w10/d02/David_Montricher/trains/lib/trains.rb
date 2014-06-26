class Train

  attr_accessor :mta_subway

  def initialize

    @mta_subway = {
      :n_line => ["Times Square", "34th Street", "28th Street", "23rd Street", "Union Square",  "8th Street/NYU"],
      :l_line => ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"],
      :six_line =>  ["Grand Central", "33rd Street", "28th Street", "23rd Street", "Union Square", "Astor Place"],
      :q_line => ["Times Square", "Herald Square", "Union Square", "Canal St."]
    }

  end

  def trip_length_calculation(enter_stop, exit_stop, lines)
    total_stops = counter(enter_stop, "Union Square", lines[1]) + counter("Union Square", exit_stop, lines[0])
  end

  def count_stops(enter_stop, exit_stop, line)
    stops_number = (@mta_subway[line.to_sym].index(enter_stop) - @mta_subway[line.to_sym].index(exit_stop))

    return stops_number
  end

  def check_if_transfer

  end

end

