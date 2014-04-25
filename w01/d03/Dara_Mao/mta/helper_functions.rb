def how_many_stops(start_name, ending_name, line)
#If two stations are from the same line, then return nil, else count how many stops.
  this_line = nil

  $trains.each do |line,stations|
   puts line
 end

  if  $trains[line].include? (start_name) && $trains[line].include? (ending_name)
      this_line = line
  end
  return this_line
end

#How many stops between 2 stations.
    diff_btw = $trains[line].index(start_name) - $trains[line].index(ending_name)
    puts "#{diff_btw.abs} stops"
end


def need_to_transfer(start_name, ending_name, line_on, line_off)
  total_stops = how_many_stops(start_name, "Union Square", line_on) + how_many_stops("Union Square", ending_name, line_off)
end
