# hash of stations
$trains = {
:n [times sq, 34th st, 28th st (n), 23rd st (n), union sq, 8th st]
:l [8th ave, 6th ave, union sq, 3rd ave, 1st ave]
:six [grand central, 33rd st, 28th st (six), 23rd st (six), union sq, astor pl]
}

def two_stops_

  print "Count stops in your subway trip. What line are you on? (N, L, Six) "
  line1 = gets.chomp.downcase.to_sym
  print "What's the first station? #{$trains[line1].join(', ')} "
  station1 = gets.chomp.downcase

  print "What line will you end on? (N, L, Six) "
  line2 = gets.chomp.downcase.to_sym
  print "What's the last station? #{$trains[line2].join(', ')} "
  station2 = gets.chomp.downcase

  # .join method to print all values on array, using a separator (comma + space in this case)

  start_location = [line1, station1]
  end_location = [line2, station2]

  journey = [start_location, end_location]

end


# determine transfer
# count stops on first line, count stops on second line, sum
# print first count or sum

