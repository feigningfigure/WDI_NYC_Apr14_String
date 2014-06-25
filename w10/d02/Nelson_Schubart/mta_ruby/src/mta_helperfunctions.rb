require_relative 'helper_functions'

# global hash of arrays of strings of station names

$trains = {
  :n_line => ["Times Square", "34th St", "28th St N-line", "23rd St N", "Union Square", "8th St N"],
  :l_line => ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"],
  :six_line => ["Grand Central", "28th on the 6-line", "23rd on the 6-line", "Union Square", "Astor Place"]
}

# function chompStop() {
#     console.log("What stop are you on?");
#         var currentStop = gets.chomp;
#         console.log("You entered: #{currentStop};
#     };


  start_array = []
  $trains.each do |key, value|
    start_array = create_start_array(key, current_stop)
  end
  print start_array



  # puts "what stop are you going to?"
  # target_stop = gets.chomp
  # target_array = []
  # target_array = $trains.each do |key, value|
  #   create_target_array(key, current_stop)
  # end
  # puts start_array


  # puts "Which stop are you going to?"
  # target_stop = gets.chomp
  # target_array


end



get_inputs
