require_relative 'helper_functions'




# global hash of arrays of strings of station names
$trains = {
  :n_line => ["Time Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

puts "Departure station?"
dep_station = gets.chomp

puts "Arriving Station?"
arv_station = gets.chomp

puts count_stops(dep_station, arv_station)

# def test_function2 ($trains, arv_station)
#   $trains.each do |key, value|
#         value.each do |array_value|
#           if array_value == end_name
#               return value.index(array_value)
#               end
#             end
#           end
#         end

#         puts test_function($trains, "23rd")


