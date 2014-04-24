require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n => ["Times Square", "34th", "28th_n", "23rd_n", "Union Square", "8th"],
  :l => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six => ["Grand Central", "33rd", "28th_six", "23rd_six", "Union Square", "Astor Place"]
}

journey_start_stop = [] #array needs to exist to put the info into when we call method journey_start_stop
journey_start_stop = get_stop_names





#My HW
# puts "Calculate how far are you going?"
# puts $trains
#   puts "What stop are you starting at?"
#     start_name = gets.chomp
#   puts "What stop are you getting of at?"
#     ending_name = gets.chomp

# how_many_stops(start_name, ending_name)
# print "#{how_many_stops(start_name, ending_name)}"

# puts "Will you need to transfer?"
# get_stop_names
# need_to_transfer?(start_name, ending_name)
