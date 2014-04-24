def how_many_stops(start_name, ending_name)
  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
  n_line = ["Times Square", "34th", "28th", "23rd", "14th", "8th"]
  if n_line.include?(start_name) && n_line.include?(ending_name)
    total = n_line.index(ending_name) - n_line.index(start_name)
    return total.abs
  else
    return nil
  end
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
