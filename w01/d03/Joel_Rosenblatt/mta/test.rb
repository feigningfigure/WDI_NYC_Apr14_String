#puts "What line are you on? 'N', 'L', or 'S'?"
#start_line = gets.chomp.downcase.to_sym
def prompt
puts "Where are you starting from?"
start_station = gets.chomp

if $trains[:n_line].include? start_station == true
  puts $trains[:n_line]
elsif $trains[:l_line].include? start_station == true
  puts $trains[:l_line]
elsif  $trains[:six_line].include? start_station == true
  puts $trains[:six_line]
else
  puts "That station doesn't exist"
end
end
