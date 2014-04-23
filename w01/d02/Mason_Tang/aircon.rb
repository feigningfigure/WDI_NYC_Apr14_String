puts "Is the Air Conditioner functional, yes or no?"

functional = gets.chomp

puts "What is the current tempurature"

current_temp = gets.chomp.to_i

puts "What is your desired temperature"

desired_temp = gets.chomp.to_i

if functional == "yes" && current_temp > desired_temp
  puts "Turn on the A/C Please"

elsif functional == "no" && current_temp > desired_temp
  puts "Fix the A/C now! It's hot!"

elsif functional =="yes" && current_temp < desired_temp
  puts "Definitely don't turn on the A/C"

else
  puts "Fix The A/C whenever you have a chance...It's cool...Brrrr"
end

