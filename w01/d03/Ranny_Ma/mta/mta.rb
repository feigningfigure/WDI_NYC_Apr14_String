require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

#puts "Enter train line"
#train_line = gets.chomp
puts "Enter starting location"
start_name = gets.chomp
puts "Enter end location"
ending_name = gets.chomp

how_many_stops(start_name, ending_name)
