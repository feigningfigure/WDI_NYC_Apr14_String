def count_stops(line)
puts "You're taking the #{line} line"
puts "Where do you start"
starter = gets.chomp
puts "Where dyou get off?"
ending = gets.chomp

if line == "N"
  array_n = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
  difference = array_n.index(starter) - array_n.index(ending)
  puts "There are #{difference.abs} stops for you to look forward to!"
elsif line == "L"
  array_l = ["8th", "6th", "Union Square", "3rd", "1st"]
  difference = array_l.index(starter) - array_l.index(ending)
  puts "There are #{difference.abs} stops for you to look forward to!"
elsif line == "6"
  array_six = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
  difference = array_six.index(starter) - array_six.index(ending)
  puts "There are #{difference.abs} stops for you to look forward to!"
end

# def n_line(start, stop)
#   array_n = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
#   difference = array_n.index(start) - array_n.index(stop)
#   puts "There are #{difference.abs} stops for you to look forward to!"
# end

# def l_line(start, stop)
#   array_l = ["8th", "6th", "Union Square", "3rd", "1st"]
#   difference = array_l.index(start) - array_l.index(stop)
#   puts "There are #{difference.abs} stops for you to look forward to!"
# end

# def six_line(start, stop)
#   array_six = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
#   difference = array_six.index(start) - array_six.index(stop)
#   puts "There are #{difference.abs} stops for you to look forward to!"
# end


end




#   # counts the stop between two on the same line
#   #
#   # takes two params:
#   # 1. a starting station name
#   # 2. an ending station name
#   #
#   # returns an integer equal to how many stops between two stops on the same line
#   # if two stops are not on the same line, return nil
# end

# def need_to_transfer?(start_name, ending_name)
#   # deteremines if a transfer is needed
#   #
#   # takes two params:
#   # 1. a station name
#   # 2. another station name
#   #
#   # returns true if transfer is need, or false for all other cases


# end
# def n_line(start, stop)
#   array_n = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
#   difference = array_n.index(start) - array_n.index(stop)
#   puts "There are #{difference.abs} stops for you to look forward to!"
# end

# def l_line(start, stop)
#   array_l = ["8th", "6th", "Union Square", "3rd", "1st"]
#   difference = array_l.index(start) - array_l.index(stop)
#   puts "There are #{difference.abs} stops for you to look forward to!"
# end

# def six_line(start, stop)
#   array_six = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
#   difference = array_six.index(start) - array_six.index(stop)
#   puts "There are #{difference.abs} stops for you to look forward to!"
# end
