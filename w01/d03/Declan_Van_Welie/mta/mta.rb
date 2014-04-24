require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l => ["8th","6th","Union Square","3rd","1st"],
  :six => ["Grand Central","33rd","28th","23rd","Union Square","Astor Place"]
}

# def count_stops(start_line, start_station, end_line, ending_station)

    puts "Which line are you starting from:'n', 'l', or 'six'?"
    starting_line = gets.chomp.to_sym

    #An attempt to return nil if the trains
#   this_line = nil


#   $trains.each do |lines,stations|
#     puts lines

#     if $trains[lines].include? (start_name) && $trains[lines].include? (ending_name)
#         this_line = lines
#       end
#     end
#     return this_line
#   end


    # if start_line == ":6"
    #   puts "Did you mean 'six'?"
    #   answer = gets.chomp
    # end
    #   if answer == "yes"
    #     start_line == "six"
    # end
    puts "Which station are you starting from?"
    starting_station = gets.chomp
    puts "Which line are you ending on: 'n', 'l', or 'six'?"
    ending_line = gets.chomp.to_sym
    puts "Which station are you ending on?"
    ending_station = gets.chomp

    if starting_line == ending_line
    puts count_stops(starting_station, ending_station, line)
    else
    puts need_to_transfer(starting_line, starting_station, ending_line, ending_station)
    end

  #end
 # count_stops
