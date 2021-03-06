def count_stops(start_name, ending_name)
  # counts the stop between two on the same line
  start_stop_number = $trains[:n_line].index(start_name)
  end_stop_number = $trains[:n_line].index(ending_name) 
  distance_between_stops = start_stop_number - end_stop_number
  distance_between_stops = distance_between_stops.abs
  return distance_between_stops
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
end

def need_to_transfer?(start_name, ending_name)
  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases

end
