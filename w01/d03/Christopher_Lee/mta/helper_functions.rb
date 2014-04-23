require_relative 'mta.rb'

def which_line(start_name,ending_name)
  if $trains[:n_line].include?(start_name) && $trains[:n_line].include?(ending_name)
    return :n_line
  end
end

def how_many_stops(start_name, ending_name)
  start_name = start_name.to_s
  ending_name = ending_name.to_s
  if need_to_transfer?(start_name, ending_name)
    return nil
  else
    train = which_line(start_name,ending_name)
    trip_length = ($trains[train].index(start_name)-$trains[train].index(ending_name)).abs
    return trip_length
  end
end

# counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an "integer equal to how many stops between two stops on the same line"
  # if two stops are not on the same line, return nil


def need_to_transfer?(start_name, ending_name)
  start_name = start_name.to_s
  ending_name = ending_name.to_s
  route = [start_name, ending_name]
  $trains.each do |k,v|
    match = v & route
    if match.length == 2
      return false
    else
      return true
    end
  end
end

  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases




