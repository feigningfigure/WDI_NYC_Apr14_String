# require_relative 'helper_functions'

# global hash of arrays of strings of station names

# $trains = {
#   :n_line => ["Times Square", "34th St", "28th St N-line", "23rd St N", "Union Square", "8th St N"],
#   :l_line => ["8th Ave", "6th St", "Union Square", "3rd Ave", "1st Ave"],
#   :six_line => ["Grand Central", "28th on the 6-line", "23rd on the 6-line", "Union Square", "Astor Place"]
# }

$n_array = ["Times Square", "34th St", "28th St N-line", "23rd St N", "Union Square", "8th St N"]

def find_stop
  puts "Here are your options:"
  puts $n_array

  puts "where are you going?"
  destination_location = gets.chomp

  start_location_index = $n_array.index(start_location)
  destination_location_index = $n_array.index(destination_location)
  number_of_stops = destination_location_index - start_location_index
  puts "You need to go #{number_of_stops} stops"
end

find_stop


