require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th Street"],
  :l_line => ["8th Ave","6th Ave","Union Square","3rd Ave", "1st Ave"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

test_n_line = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th Street"]

test_six_line = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]

# def total_stops(entrance_line, entrance_stop, exit_line, exit_stop)

# end

# # counting distance between areas of an arrays
# # e.g. array.length
# #


# test_array = ["8th Ave","6th Ave","Union Square","3rd Ave", "1st Ave"]

# test_array.each_with_index do |item, index|
#   puts item
#   puts index
# end

# puts test_array.index("8th Ave")

# hots = test_array.index("8th Ave")


# test_array.index("8th Ave") # 0
# test_array.index("Union Square") # 2


# test_array.index("Union Square") - test_array.index("8th Ave") #works

# # you reverse it: format is final stop - beginning stop
# test_array.index("1st Ave")-test_array.index("6th Ave") #works

# # works: this is how you want to do it
# (test_array.index("8th Ave")-test_array.index("3rd Ave")).abs


def count_stops(start_name, ending_name)
  start_name = start_name.to_s
  ending_name = ending_name.to_s
  l_line = ["8th Ave","6th Ave","Union Square","3rd Ave", "1st Ave"]
  trip_length = (l_line.index(start_name)-l_line.index(ending_name)).abs
  puts trip_length
end
