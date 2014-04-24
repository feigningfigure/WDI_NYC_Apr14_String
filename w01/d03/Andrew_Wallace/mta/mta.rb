# Back-End Bonus:
# Implement input validation
# User MUST enter a line and station that is IN the subway network
# If the user enters something else, your program should handle it gracefully
# Add the following line without making major modifications to your code:
# The Q line has the following stops: Times Square, Herald Square, Union Square, Canal St.
# Allow trains to have multiple intersection points
# Google 'ruby array intersect'. Is there away that you might take advantage of ruby's ability to determine shared values between arrays?
# Final Thoughts:
# Will your code work if/when we add ALL of NYC's subway lines?


require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l => ["8th", "6th", "Union Square", "3rd", "1st"],
  :s => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
  # :q => ["Times Square", "Herald Square", "Union Square", "Canal St."]
}

puts "What line are you on? 'N', 'L', or 'S'?" # or 'Q'?"
start_line = gets.chomp.downcase.to_sym
puts "Where are you starting from?"
start_station = gets.chomp
puts "What line do you want to end on?"
end_line = gets.chomp.downcase.to_sym
puts "Where do you want to go?"
end_station = gets.chomp

if start_line == end_line
  puts how_many_stops(start_station, end_station, start_line)
else
  puts need_to_transfer(start_station, end_station, start_line, end_line)
  # puts count_intersections(start_line, end_line)
end


