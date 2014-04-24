# $trains = {
#   :n => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
#   :l => ["8th", "6th", "Union Square", "3rd", "1st"],
#   :s => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
# }

def how_many_stops(start_name, ending_name, line)
  # counts the stop between two on the same line
  num_of_stops = ($trains[line].index(start_name).to_f - $trains[line].index(ending_name).to_f).abs.to_i
  # puts "#{num_of_stops.abs} stops!"
  #
  # takes two params:
  # 1. a starting station name
  # 2. an ending station name
  #
  # returns an integer equal to how many stops between two stops on the same line
  # if two stops are not on the same line, return nil
end

def need_to_transfer(start_name, ending_name, starting_line, ending_line)
  total_num_of_stops = (how_many_stops(start_name, "Union Square", starting_line).to_f + how_many_stops("Union Square", ending_name, ending_line).to_f).abs.to_i
  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases
end

# def distance_calc(starting_line, ending_line)
#   if starting_line == ending_line
#     puts how_many_stops(start_name, ending_name, start_line)
#   elsif starting_line != ending_line
#     puts need_to_transfer(start_name, ending_name, starting_line, ending_line)
#   else
#     puts "Cannot find the lines you are looking for.  Please try again"
#   end
# end
