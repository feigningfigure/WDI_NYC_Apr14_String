n_line = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]

puts "What is your starting location? "
start_name = gets.chomp.capitalize

puts "What is your destination? "
ending_name = gets.chomp

num_of_stops = n_line.index(start_name) - n_line.index(ending_name)

puts "#{num_of_stops.abs} stops!"