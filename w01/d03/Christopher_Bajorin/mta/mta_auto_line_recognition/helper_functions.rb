
def create_start_array(line, current_stop)
  start = []
  $trains[line].each do |stop|
    if stop == current_stop
      current_line = line                                    #this works
      # start.push(line.to_s)
      # start.push($trains[line].index(stop.to_s))
      start[0] = current_line
      start[1] = $trains[line].index(stop)
    end
  end
  start
end

def create_target_array(line, current_stop)
  target = []
  $trains[line].each do |stop|
    if stop == current_stop
      target.push(line_index)
      target.push(stop_index)
    end
  end
  # puts start_array
  return target_array
end

# def count_stops(start_name, ending_name)



  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
# end




# def need_to_transfer?(start_line, ending_line)

#   if start_line != ending_line
#     transfer = true
#   else
#     transfer = false
#   end
# end
