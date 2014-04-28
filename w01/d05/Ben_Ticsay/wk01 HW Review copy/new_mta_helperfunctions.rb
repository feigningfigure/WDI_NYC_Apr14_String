def gather_user_inputs
  puts "Enter starting train line:"
  start_line = gets.chomp.to_sym
  puts "Enter starting train station:"
  start_station = gets.chomp
  puts "Enter ending train line:"
  end_line = gets.chomp.to_sym
  puts "Enter ending train station:"
  end_station = gets.chomp
end

def count_stops(start_line, end_line)
  $trains.each do {|key, value| value}
  value.each_with_index {|val, index| puts "#{index}" - "#{index}"}

# start_line.index - end_line.inde
  if 
    start_line != end_line
    return nil
  end

end 

def need_to_transfer
  


end


$trains[start_line]()