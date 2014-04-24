def how_many_stops(start_name, ending_name, train_line)
  start_name = start_name.to_s
  ending_name = ending_name.to_s
    # train = which_line(start_name,ending_name)
    trip_length = ($trains[train_line].index(start_name)-$trains[train_line].index(ending_name)).abs
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
  puts "What line would you like to start at?"
  start_line = gets.chomp
  puts "What stop would you start at?"
  start_stop = gets.chomp.to_s.split.map(&:capitalize).join(' ')
  puts "What line would you like to end on?"
  end_line = gets.chomp.to_s
  puts "What stop would you like to get off on?"
  end_stop = gets.split.map(&:capitalize).join(' ')
  beginning_line = line_picker(start_line)
  ending_line = line_picker(end_line)
  if need_to_transfer?(beginning_line, ending_line)
    leg_1 = how_many_stops(start_stop,"Union Square", beginning_line)
    leg_2 = how_many_stops("Union Square",end_stop, ending_line)
    return leg_1 + leg_2
  else
    how_many_stops(start_stop,end_stop,ending_line)
  end
end


def line_picker(line)
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
