def interact_with_mta_kiosk

  puts "Departure station?"
  depart = valid_input?
  puts "Arrival station?"
  arrive = valid_input?
  
  count_stops(depart, arrive)
end

def count_stops(start_name, ending_name)
  #find out which line each stop is on
  line1 = find_line(start_name)
  line2 = find_line(ending_name)
  
  if line1 == 1
    line1 = line2
  end
  
  if line2 == 1
    line2 = line1
  end

  stop1 = find_stop_number(line1, start_name)
  stop2 = find_stop_number(line2, ending_name)

  if need_to_transfer?(line1,line2) == false
    puts "No Transfer Required"
    total_stops_required = stops_travelled(stop1, stop2)
  else
    puts "Transfer Required"
    union1 = find_stop_number(line1, "Union Square")
    union2 = find_stop_number(line2, "Union Square")
    times_n = find_stop_number($trains[:n_line], "Times Square")
    times_q = find_stop_number($trains[:q_line], "Times Square")
    if line1 == $trains[:n_line] && line2 == $trains[:q_line]
      before_transfer = fastest_route(stop1,union1,times_n)
      after_transfer = fastest_route(stop2,union2,times_q)
    elsif line1 == $trains[:q_line] && line2 == $trains[:n_line]
      before_transfer = fastest_route(stop1,union1,times_q)
      after_transfer = fastest_route(stop2,union2,times_n)
    else
      before_transfer = stops_travelled(stop1,union1)
      after_transfer = stops_travelled(stop2,union2)
    end
  total_stops_required = before_transfer + after_transfer
  end
  puts "Your trip will take #{total_stops_required} stops"
end

def fastest_route(train_stop,option1,option2)
    if stops_travelled(train_stop,option1) < stops_travelled(train_stop,option2)
    x = stops_travelled(train_stop,option1)
    else
    x = stops_travelled(train_stop,option2)
    end
    x
end


def need_to_transfer?(line1, line2)
  # deteremines if a transfer is needed
  if line1 == line2
    false
  else
    true
  end
end

def valid_input?
  stop_name = gets.chomp

  if find_line(stop_name) == false
    puts "Stop '#{stop_name}' not found. Please enter valid station."
    valid_input?
  else
    stop_name
  end
end

def find_line(stop_name)
if stop_name != "Union Square"
  if $trains[:n_line].include? stop_name
    $trains[:n_line] #set variable to call array of specific line
  elsif $trains[:l_line].include? stop_name
    $trains[:l_line]
  elsif $trains[:six_line].include? stop_name
    $trains[:six_line]
  elsif $trains[:q_line].include? stop_name
    $trains[:q_line]
  else
    false
  end
else
  1 #random variable = any line works for this stop (Union Square)
end
end

def find_stop_number(line_name,stop_name)
  line_name.index(stop_name) + 1 #add one in order to make each index value a whole number
end

def stops_travelled(first_stop,last_stop)
  stops = first_stop - last_stop
  stops = stops.abs #return positive number
end
