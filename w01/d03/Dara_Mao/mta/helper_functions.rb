def how_many_stops(start_name, ending_name,line)
#If two stations are from the same line, then return nil, else count how many stops.
    this_line = nil

  $trains.each do |lines,stations|
   puts lines
 end

  if  $trains[lines].include? (start_name) && $trains[lines].include? (ending_name)
      this_line = lines
  end
  return this_line
end

#How many stops between 2 stations.
    diff_btw = $trains[line].index(start_name) - $trains[line].index(ending_name)
    puts "#{diff_btw.abs} stops"
  else
    return nil
  end

end

def need_to_transfer(start_name,ending_name,line_on, line_off)
  #return true if stops are not on the same line
  if $trains[:n_line](start_name) != $trains[:n_line](start_name)
    return true
    #return false for stops on the same line 'Times Square' and '28th'
  else
    return false
  end
end
