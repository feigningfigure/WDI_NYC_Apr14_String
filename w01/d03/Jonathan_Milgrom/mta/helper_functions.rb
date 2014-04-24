puts "starting stop"
  puts "Enter train line of stop"
  s_key_value = gets.chomp.to_sym
  puts "enter stop"
  user_start_name = gets.chomp
puts "ending stop"
  puts "Enter train line of stop"
  e_key_value = gets.chomp.to_sym
  puts "enter stop"
  user_ending_name = gets.chomp  

$trains = {
  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}



US = "Union Square"

def how_many_stops(k, start_name, ending_name)
  
  count = $trains[k].index(start_name) - $trains[k].index(ending_name)
  return count.abs

end

if s_key_value == e_key_value
  puts how_many_stops(s_key_value, user_start_name, user_ending_name)
else
  puts how_many_stops(s_key_value, user_start_name, US) + how_many_stops(e_key_value, US, user_ending_name)
end




