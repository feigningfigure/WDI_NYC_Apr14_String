require 'rainbow/ext/string'
require 'pry'
# added comment

$trains = {}

$trains[:n] = ['ts', '34th', '28th-n', '23rd-n', 'us']
$trains[:l] = ['8th', '6th', 'us', '3rd', '1st']
$trains[:s] = ['gc', '33rd', '28th-s', '23rd-s', 'us']

puts `clear`
puts "***mta***".color('#0033ff')
puts "\nWhat train do you want to get on: #{$trains.keys.join(', ')}? " .color('#ff3300')
start_train = gets.chomp.to_sym
puts "Which stop: #{$trains[start_train].join(', ')}? ".color('#ff3300')
stop_a = gets.chomp

puts "\nWhat train do you want to get off: #{$trains.keys.join(', ')}? ".color('#ff0033')
stop_train = gets.chomp.to_sym
puts "Which stop: #{$trains[stop_train].join(', ')}? ".color('#ff0033')
stop_b = gets.chomp

## Another way to find the intersection
intersection = ($trains[start_train] & $trains[stop_train]).first
# intersection = 'us'

if (start_train != stop_train)
  stop_a_index = $trains[start_train].index(stop_a)
  stop_a_intersection_index = $trains[start_train].index(intersection)
  trip_a_length = (stop_a_index - stop_a_intersection_index).abs

  stop_b_index = $trains[stop_train].index(stop_b)
  stop_b_intersection_index = $trains[stop_train].index(intersection)
  trip_b_length = (stop_b_index - stop_b_intersection_index).abs

  total_length_of_trip = trip_a_length + trip_b_length
else
  stop_a_index = $trains[start_train].index(stop_a)
  stop_b_index = $trains[stop_train].index(stop_b)
  total_length_of_trip = (stop_a_index - stop_b_index).abs
end

puts "\n\nYour trip length is #{total_length_of_trip} stops.\n\n".color('#ff9900')
