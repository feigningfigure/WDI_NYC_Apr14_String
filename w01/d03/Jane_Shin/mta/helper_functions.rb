def get_stop_names
  puts "What stop are you starting from? 'N', 'L', or 'Six'?" #ask for lines and not just stops
    start_line = gets.chomp.downcase.to_sym #keys in $trains are symbols and lowercase
  puts "Which stop: #{$trains[start_line].join(', "')}?"
    start_name = gets.chomp #string

  puts "Which line do you want to end on? 'N', 'L', or 'Six'?"
    ending_line = gets.chomp.downcase.to_sym #keys in $trains are symbols and lowercase
  puts "Which stop: #{$trains[ending_line].join(', "')}?"
    ending_name = gets.chomp #string

#one way to bundle variables for future use outside of this function
start_location = [start_line, start_name]
ending_location = [ending_line, ending_name]
journey = [start_location, ending_location]
   
end

def how_many_stops(journey)
  # counts the stop between two on the same line
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
  if $trains[:n_line].include?(start_name) && $trains[:n_line].include?(ending_name)
    total = $trains[:n_line].index(ending_name) - $trains[:n_line].index(start_name)
    return total.abs
  elsif $trains[:l_line].include?(start_name) && $trains[:l_line].include?(ending_name)
    total = $trains[:l_line].index(ending_name) - $trains[:l_line].index(start_name)
    return total.abs
  elsif $trains[:six_line].include?(start_name) && $trains[:six_line].include?(ending_name)
    total = $trains[:six_line].index(ending_name) - $trains[:six_line].index(start_name)
    return total.abs 
  else
    return nil
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
  if how_many_stops(start_name, ending_name) == nil
    return true
  else how_many_stops(start_name, ending_name) > 0
    return false
  end
end


# def list_of_lines(master)
#   # case = master
#   when master.each do |k, v|
#       print "pick from the following"
#       puts "#{k}"
#     end
# end
