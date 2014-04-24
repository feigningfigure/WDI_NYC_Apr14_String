def count_stops(start_name, ending_name)
  indexes = []
  indexes << $trains[:n].index(start_name)
  indexes << $trains[:l].index(start_name)
  indexes << $trains[:s].index(start_name)
  indexes << $trains[:n].index(ending_name)
  indexes << $trains[:l].index(ending_name)
  indexes << $trains[:s].index(ending_name)
  #indexes.compact[0]
  #indexes.compact[0]
  p indexes.compact[1].abs - indexes.compact[0].abs
end


  # $trains.each do |key, value|
  # p start_index = value.index(start_name)
  # p ending_index = value.index(ending_name)
  # ##ending_index - start_index




  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil


def need_to_transfer?(start_name, ending_name)

  if $trains[:n].include?(start_name) && $trains[:n].include?(ending_name)
    false
  elsif $trains[:l].include?(start_name) && $trains[:l].include?(ending_name)
    false
  elsif $trains[:s].include?(start_name) && $trains[:s].include?(ending_name)
    false
  else 
    true
  end

end






