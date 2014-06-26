# class Mta

# global hash of arrays of strings of station names
  def initialize(start_line, start_station, start_stop, end_line, end_stop)
  @start_line = start_line
  @start_station = start_station
  @start_stop = start_stop.to_s.split.map(&:capitalize).join(' ')
  @end_line = end_line
  @end_stop = end_stop.split.map(&:capitalize).join(' ')

end

def how_many_stops()
  @start_station = start_station.to_s
  @end_stop = end_stop.to_s
    @trip_length = ($trains[train_line].index(start_station)-$trains[train_line].index(end_stop)).abs
    return trip_length
end

def need_to_transfer?(start_line, end_line)
  start_line = start_line.to_s
  end_line = end_line.to_s
    if start_line == end_line
      return false
    else
      return true
  end
end

def count_my_train_stops
  beginning_line = chosen_line(start_line)
  ending_line = chosen_line(end_line)
  if need_to_transfer?(beginning_line, ending_line)
    leg_1 = how_many_stops(start_stop,"Union Square", beginning_line)
    leg_2 = how_many_stops("Union Square",end_stop, ending_line)
    return leg_1 + leg_2
  else
    how_many_stops(start_stop,end_stop,ending_line)
  end
end


def chosen_line(line)
  line = line.to_s.downcase
  case line
  when "l"
    return :l_line
  when "n"
    return :n_line
  when "q"
    return :q_line
  when "6", "six", "six line"
    return :six_line
  end
end

