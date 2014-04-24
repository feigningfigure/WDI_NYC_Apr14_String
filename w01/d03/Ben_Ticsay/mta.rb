# require_relative 'helper_functions_mta'

puts "Enter starting line:"
start_line = gets.chomp.to_sym

puts "Enter starting stop:"
start_stop = gets.chomp

puts "Enter end line:"
end_line = gets.chomp.to_sym	
puts "Enter end stop:"
end_stop = gets.chomp	


$trains = {
  :n_line => ["Time Square", "34th ", "28th", "23rd", "Union Square", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

# n = :n_line
# l = :l_line
# six = :six_line

US = "Union Square"


def count_stops (x, start, stop)

  count = $trains[x].index(start) - $trains[x].index(stop)
  return count.abs
end

if start_line == end_line
  puts count_stops(first_line, start_stop, end_stop)
else
puts count_stops(start_line, start_stop, US) + count_stops(end_line, US, end_stop)

end




