
def start_stop_prompt

puts "What line are you on? 'N', 'L', or 'Six'?" # rename line symbols to match this prompt
start_line = gets.chomp.downcase.to_sym
puts "Which stop: #{$trains[start_line].join(', ')]}? " #eliminates trailing comma
start_station = gets.chomp

puts "What line do you want to end on? 'N', 'L', or 'Six'?"
end_line = gets.chomp.downcase.to_sym
puts puts "Which stop: #{$trains[end_line].join(', ')]}? "
end_station = gets.chomp

start_location = [start_line, start_station]      #BUNDLING!!!
end_location = [end_line, end_station]
journey = [start_location, end_location]          # because the prompt ends with this info, it will be the return value

end
# puts "Here are a list of stops on the N_line: #{$trains[:n_line]}:


