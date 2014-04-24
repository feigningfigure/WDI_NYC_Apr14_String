def count_stops(line_start_name, station_name, start_name, station_ending_name, ending_name)
  # counts the stop between two on the same line
  #
  # takes two params:


  "Which line did you start from?"
  line_start_name = gets.chomp.downcase

  "Which station on the #{line_start_name} line did you start from?"
  station_name = gets.chomp.downcase
  #start_name = "#{line_start_name}" + "#{station_name}"

  line_start_name = array
  array.index(station_name)
  return "#{station_name} is at position #{index} in the array."

  # "Which station are you trying to get to?"
  # ending_name = gets.chomp.downcase
  # array.each_with_index do |item, index|
  # puts "#{item} is at position #{index} in the array."

  # In order for the array.each_with_index method to work,
  # need to know which array the station is in.

  # Then you need to take the #{ending_name} - #{start_name}
  # to return the difference between the two.

end

end


l_array = ["l8th", "l6th", "union square", "8th"]

