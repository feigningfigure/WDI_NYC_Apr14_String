
def start_stop_prompt

  puts "What line are you on? 'N', 'L', or 'Six'?" # or 'Q'?"
  start_line = gets.chomp.downcase.to_sym
  puts "Which stop:#{[start_line].join(',')}?"

  puts "What line do you want to end on? 'N', 'L', or 'Six'?" # or 'Q'?"
  start_station = gets.chomp
  puts "What line do you want to end on?"
  end_line = gets.chomp.downcase.to_sym
  puts "Which stop:#{[end_line].join(',')}?"
  end_station = gets.chomp

  start_location = [start_line, start_station]
  end_location = [end_line, end_station]
  journey = [start_location, end_location]

end


def count_stops(start_name, ending_name)

end

def need_to_transfer?(start_name, ending_name)
  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases


end
