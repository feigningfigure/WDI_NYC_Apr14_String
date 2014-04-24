# require_relative 'helper_functions'

# global hash of arrays of strings of station names

$trains = {
  :n_line => ["Times Square", "34th St", "28th St N-line", "23rd St N", "Union Square", "8th St N"],
  :l_line => ["8th Ave", "6th St", "Union Square", "3rd Ave", "1st Ave"],
  :six_line => ["Grand Central", "28th on the 6-line", "23rd on the 6-line", "Union Square", "Astor Place"]
}


def find_stop
  puts "\nHere are your line options:"
  $trains.each do |key, value|
    puts key
  end

  puts "\nWhat line are you on?"
  cur_lin = gets.chomp.to_sym

  puts "\nHere are the stops on the #{cur_lin}"
  puts $trains[cur_lin]

  puts "\nWhat stop are you on?"
  cur_stop = gets.chomp

  puts "\nWhich line are you going to?"
  dest_lin = gets.chomp.to_sym

  puts "\nHere are the stops on the #{dest_lin}"
  puts $trains[dest_lin]

  puts "\nwhich stop?"
  dest_stop = gets.chomp

  cur_lin_dist = $trains[cur_lin].index(cur_stop) - $trains[cur_lin].index("Union Square")
  dest_lin_dist = $trains[dest_lin].index(dest_stop) - $trains[dest_lin].index("Union Square")

  tot_dist = cur_lin_dist.abs + dest_lin_dist.abs

  puts "\n You have #{tot_dist} stops until #{dest_stop}"
end


find_stop
