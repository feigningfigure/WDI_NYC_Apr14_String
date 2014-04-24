def room_temperature
  print "What's the current room temperature? "
  temp = gets.chomp.to_i

  print "What's the desired temperature? "
  des_temp = gets.chomp.to_i

  print "Is the A/C functional? yes or no "
  ac_func = gets.chomp

  if temp < des_temp && ac_func == "yes"
    puts "It looks like you're fine for now"
  elsif temp < des_temp && ac_func == "no"
    puts "You're fine now, but fix the A/C whenever you have the chance"
  elsif temp > des_temp && ac_func == "yes"
    puts "Turn on the A/C, please"
  elsif temp > des_temp && ac_func == "no"
    puts "Fix the A/C now, it's hot!"
  end
end

room_temperature
