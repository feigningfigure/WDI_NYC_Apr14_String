require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l => ["8th", "6th", "Union Square", "3rd", "1st"],
  :s => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

puts "Which line are you on? (n)line, (l)line, or (s)ix line?"
starting_line = gets.chomp.to_sym
#get an input and convert to sym match n l or s

puts "What is your starting location? "
start_name = gets.chomp

puts "What is the end line? "
ending_line = gets.chomp.to_sym

puts "What is your destination? "
ending_name = gets.chomp

# puts how_many_stops(choice_line, start_name, ending_name)

if starting_line == ending_line
puts how_many_stops(start_name, ending_name, start_line)
elsif starting_line != ending_line
puts need_to_transfer(start_name, ending_name, starting_line, ending_line)
else
puts "Cannot find the lines you are looking for.  Please try again"
end

# distance_calc(starting_line, ending_line)