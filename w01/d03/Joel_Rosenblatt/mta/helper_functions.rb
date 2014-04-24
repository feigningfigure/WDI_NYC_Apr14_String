def count_stops(start_name, ending_name)
  # counts the stop between two on the same line
  unless $trains [:n_line].include? start_name || ending_name == false then
  stops = $trains [:n_line].index(ending_name) - $trains [:n_line].index(start_name)
  puts "#{stops.abs} stop/s until destination"
else
  return nil
end
  #
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
