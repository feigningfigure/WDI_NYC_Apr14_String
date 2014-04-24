def how_many_stops(start_station, end_station)
  count_stops(start_station, end_station)
end



def count_stops(start_station, end_station)    
  puts "running count_stops"
  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil

  if same_line?(start_station, end_station) 
    return distance_between_stops_on_same_line(start_station, end_station)
  else                                                    #same_line?(start_station, end_station) == false
    #figure out what to do
  end
end


def distance_between_stops_on_same_line(start_station, end_station)
  puts "running distance_between_stops_on_same_line"
  return ($trains[:n_line].index(start_station).to_f - $trains[:n_line].index(end_station).to_f).abs.to_i
end



def same_line?(origin_name, destination_name)
  puts "running need to need_to_transfer"
  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases

  origin_in_n = $trains[:n_line].include?(origin_name)
  origin_in_l = $trains[:l_line].include?(origin_name)
  origin_in_six = $trains[:six_line].include?(origin_name)
  destination_in_n = $trains[:n_line].include?(destination_name)
  destination_in_l = $trains[:n_line].include?(destination_name)
  destination_in_six = $trains[:n_line].include?(destination_name)
  
  if (origin_in_n && destination_in_n) 
    return true
  elsif (origin_in_l && destination_in_l) 
    return true
  elsif (origin_in_six && destination_in_six) 
    return true
  else return false
  end
end