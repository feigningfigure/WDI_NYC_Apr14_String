def count_stops(start_station, end_station)
  distance_between_stops_on_same_line = $trains[:n_line].index(start_station) - $trains[:n_line].index(end_station)
  puts start_station, end_station
  return distance_between_stops_on_same_line.to_f.abs.to_i

end

  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil

def need_to_transfer?(start_name, end_name)
  if need_to_transfer == true
    return nil
  else need_to_transfer == false
    return count_stops(start_station, ending_station)
  end
  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases


end
