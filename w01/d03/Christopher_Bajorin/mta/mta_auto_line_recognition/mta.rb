require_relative 'helper_functions'

# global hash of arrays of strings of station names

$trains = {
  :n_line => ["Times Square", "34th St", "28th St N-line", "23rd St N", "Union Square", "8th St N"],
  :l_line => ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"],
  :six_line => ["Grand Central", "28th on the 6-line", "23rd on the 6-line", "Union Square", "Astor Place"]
}

def get_inputs
  puts "what stop are you on?"
  current_stop = gets.chomp
  start_array = []
  start_array = $trains.each do |key, value|
    create_start_array(key, current_stop)
  end
  puts "line #{start_array[0]} and stop #{start_array[1]}"

  puts "what stop are you going to?"
  target_stop = gets.chomp
  target_array = []
  target_array = $trains.each do |key, value|
    create_target_array(key, current_stop)
  end
  puts "line #{target_array[0]} and stop #{target_array[1]}"


  # puts "Which stop are you going to?"
  # target_stop = gets.chomp
  # target_array


end



get_inputs
