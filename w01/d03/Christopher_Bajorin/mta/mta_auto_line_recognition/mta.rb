# require_relative 'helper_functions'

# global hash of arrays of strings of station names

$trains = {
  :n_line => ["Times Square", "34th St", "28th St N-line", "23rd St N", "Union Square", "8th St N"],
  :l_line => ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"],
  :six_line => ["Grand Central", "28th on the 6-line", "23rd on the 6-line", "Union Square", "Astor Place"]
}

def get_inputs
  puts "what stop are you on?"
  current_stop = gets.chomp

  $trains.each do |key, value|
    inspect_stops_array(key, current_stop)
  end
end

def inspect_stops_array(line, current_stop)
  $trains[line].each do |stop|
    if stop == current_stop
      #puts $trains[line].index(stop)
      stop_index = $trains[line].index(stop)
      line_index = line
      # create_start_array(line_index, stop_index)
    else
      waste = "stop"
    end
  end
end

# def creat_start_array(start_line_index, stop_line_index)
#   start_array = [start_line_index, stop_line_index]
#   puts start_array
# end
get_inputs
