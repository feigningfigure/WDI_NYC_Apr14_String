def how_many_stops(start_name, ending_name)
  num_of_stops = $trains[:n_line].index(ending_name) - $trains[:n_line].index(start_name)
  p num_of_stops.abs
  #num_of_stops.abs
  #retu num_of_stops.abs
    # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
end

def need_to_transfer?(start_name, ending_name)
  # determines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases


end

