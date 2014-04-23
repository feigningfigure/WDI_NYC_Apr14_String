def air_conditioning
  # gets arguments directly from user
  puts "What is the current temperature?"
  # changes numeric inputs to integers
  current_temp = gets.chomp.to_i
  puts "What is the desired temperature?"
  desired_temperature = gets.chomp.to_i
  puts "Is the air conditioner working (Y/N)?"
  # upcase formats string answer for the control flow elements
  working_condition = gets.chomp.upcase.to_s

  if working_condition == "Y" && current_temp < desired_temperature
    puts "Turn on the A/C Please"
  elsif working_condition == "N" && current_temp > desired_temperature
    puts "Fix the A/C now! It's hot!"
  else working_condition == "N"  && current_temp > desired_temperature
    puts "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."
  end
end

air_conditioning

