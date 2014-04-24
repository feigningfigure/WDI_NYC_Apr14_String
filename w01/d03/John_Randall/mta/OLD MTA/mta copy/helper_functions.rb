def how_many_stops(start_station, end_station)
  count_stops(start_station, end_station)
end



def count_stops(start_station, end_station)    
  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil


  if need_to_transfer == true
    #figure out what to do

  else need_to_transfer == false
    distance_between_stops_on_same_line = ($trains[:n_line].index(start_station).to_f - $trains[:n_line].index(end_station).to_f).abs.to_i
    return distance_between_stops_on_same_line
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
  start_in_n = $trains[:n_line].include(start_name)
  start_in_l = $trains[:l_line].include(start_name)
  start_in_six = $trains[:six_line].include(start_name)
  stop_in_n = $trains[:n_line].include(stop_name)
  stop_in_l = $trains[:n_line].include(stop_name)
  stop_in_six = $trains[:n_line].include(stop_name)
  
  if start_in_n && stop_in_n {return true}
  elsif start_in_l && stop_in_l {return true}
  elsif start_in_six && stop_in_six {return true}
  else return false
  end
end