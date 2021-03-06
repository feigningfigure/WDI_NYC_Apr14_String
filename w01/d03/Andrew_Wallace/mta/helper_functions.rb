# Hints:
# Get the program to work for a single line before trying to tackle multiple lines.
# Consider diagramming the lines by sketching out the subway lines and their stops and intersection.
# Make subway lines keys in a hash, while the values are an array of all the stops on each line.
# Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)
# Do not begin with implementing a user interface. Begin with implementing the logic that calculates the distance between two stops in the subway system.

puts "What line are you on? 'N', 'L', or 'Six'?" # or 'Q'?"
start_line = gets.chomp.downcase.to_sym
puts "Which stop: #{$trains[start_line].join(', ')}? "
start_station = gets.chomp
puts "What line do you want to end on? 'N', 'L', or 'Six'?"
end_line = gets.chomp.downcase.to_sym
puts "Which stop: #{$trains[start_line].join(', ')}? "
end_station = gets.chomp

start_location = [start_line, start_station]
end_location = [end_line, end_station]
journey = [start_location, end_location]


def how_many_stops(start_station, end_station, line)
   distance = ($trains[line].index(start_station) - $trains[line].index(end_station)).abs
end

  # if two stops are not on the same line, return nil


def need_to_transfer(start_station, end_station, start_line, end_line)
  total_distance = how_many_stops(start_station, "Union Square", start_line) + how_many_stops("Union Square", end_station, end_line)
end

# def count_intersections(start_line, end_line)
#   shared_intersections = $trains[line].index(start_line) & $trains[line].index(end_line)
# end

# def find_stop_number(array,value)
#   array.index(value) + 1
# end

# def stops_travelled(start_station,end_station)
#   stops = start - $trains[:n_line].index(end_station)
#   stops = stops.abs
#   puts "#{stops} stops required"
# end

  # determines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases
