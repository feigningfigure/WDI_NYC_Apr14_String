puts "Enter line of first stop (n_line, l_line, six_line, q_line)"
first_line = gets.chomp.to_sym
puts "Enter first station"
first_station = gets.chomp

puts "Enter line of last stop (n_line, l_line, six_line, q_line)"
last_line = gets.chomp.to_sym
puts "Enter last station"
last_station = gets.chomp


$trains = {
  :n_line => ["Time Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
  :q_line => ["Time Square", "Herald Square", "Union Square", "Canal St"]
}

US = "Union Square"

def count_stops (x, first, last)

  count = $trains[x].index(first) - $trains[x].index(last)
  return count.abs
end

if first_line == last_line
  puts count_stops(first_line, first_stop, last_stop)
else
puts "Your trip from #{first_station} to #{last_station} will take #{count_stops(first_line, first_station, US) + count_stops(last_line, US, last_station)} stops."

end
