# def count_stops(start_name, ending_name)
#   # counts the stop between two on the same line
#   #
#   # takes two params:

# global hash of arrays of strings of station names
# $trains = {
#   :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
#   :l_line => ["8th","6th","Union Square","3rd","1st"],
#   :six_line => ["Grand Central","33rd","28th","23rd","Union Square","Astor Place"]
# }

def count_stops(starting_station, ending_station, line)
 stop_num = ($trains[line].index(starting_station) - $trains[line].index(ending_station)).abs
end

# #An attempt to return nil if the trains
#   this_line = nil


#   $trains.each do |lines,stations|
#     puts lines

#     if $trains[lines].include? (start_name) && $trains[lines].include? (ending_name)
#         this_line = lines
#       end
#     end
#     return this_line
#   end


def need_to_transfer(starting_line, starting_station, ending_line, ending_station)
  transfer_stop_num =
  count_stops(starting_station, "Union Square", starting_line) +
  count_stops("Union Square", ending_station, ending_line)
end

  # $trains[:]starting_line


  # def count_stops(start_line, start_station, end_line, ending_station)

  #   puts "Which line are you starting from?"
  #   start_line = gets.chomp.to_sym
  #   puts "Which station are you starting from?"
  #   start_station = gets.chomp
  #   puts "Which line are you ending on?"
  #   end_line = gets.chomp.to_sym
  #   puts "Which station are you ending on?"
  #   end_station = gets.chomp

  #   if start_line == end_line do
  #     count_stops
  #   else do
  #     need_to_transfer
  #   end

  # end
  # count_stops
#   def count_stops(start_name, ending_name)

#   n_line = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]

#   start = n_line.index(start_name)


#   ending = n_line.index(ending_name)

#   stops = (start - ending)
#   puts stops



# end
#   puts "Which line would you like to start from?"
#   line = gets.chomp.to_sym
#   puts "Which station did you start from?"
#   start_name = gets.chomp
#   puts "Which station are you trying to get to?"
#   ending_name = gets.chomp
#   count_stops(start_name, ending_name)

# def which_line(start_name, ending_name)
#   $trains[:](start_name) != $trains[:](ending_name)



  # puts "Which line did you start from?"
  # start_name = gets.chomp

  # # "Which station on the #{line_start_name} line did you start from?"
  # # station_name = gets.chomp.downcase
  # # #start_name = "#{line_start_name}" + "#{station_name}"

  # puts "Which station are you trying to get to?"
  # ending_name = gets.chomp

# count_stops(start_name, ending_name)
#   # array.each_with_index do |item, index|
#   # puts "#{item} is at position #{index} in the array."

  # In order for the array.each_with_index method to work,
  # need to know which array the station is in.

  # Then you need to take the #{ending_name} - #{start_name}
  # to return the difference between the two.
# end
# how_many_stops
# end

#   # 1. a starting station name
#   # 2. an ending station name
#   #
#   # returns an integer equal to how many stops between two stops on the same line
#   # if two stops are not on the same line, return nil
# end

# def need_to_transfer?(start_name, ending_name)
#   # deteremines if a transfer is needed
#   #
#   # takes two params:
#   # 1. a station name
#   # 2. another station name
#   #
#   # returns true if transfer is need, or false for all other cases


# end
