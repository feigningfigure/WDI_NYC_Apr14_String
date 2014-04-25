# This is a mess. It gets the difference between stops on one line only.
# Obviously I would redo it completely differently, including make a new hash.
# Definitely need help with syntax for manipulating global variables, especially hashes.

require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

puts "What line are you taking? (N)line, (L)line or (6)line?"
your_line = gets.chomp

count_stops(your_line)


# if line == "N"
#   puts "Start?"
#   start = gets.chomp
#   puts "And stop?"
#   stop = gets.chomp
#   n_line(start, stop)
# else line == "L"
#   puts "Start?"
#   start = gets.chomp
#   puts "And stop?"
#   stop = gets.chomp
#   l_line(start, stop)
# end



# def scan_lines(stop)
#   $trains.each do |key, value|
#     inspect_thing_in_bedroom(value)
# end

# def inspect_thing_in_bedroom(thing)
#   if thing.class == Array
#     find_stop(thing)
#   elsif thing.class == Hash
#     thing.each do |key, value|
#       inspect_thing_in_bedroom(value)
#     end
#   end
# end
