def temperature

  puts "What's the current temperature?"
  current = gets.chomp

  puts "Is there a functioning A/C? (YES/NO)"
  ac = gets.chomp.downcase

  puts"What temperature sounds good?"
  desired = gets.chomp

  if ac == "yes" && current > desired
    puts "Turn on the A/C Please"
  elsif ac == "yes" && current < desired
    puts "I think this A/C heats as well."
  elsif ac == "no" && current > desired
    puts "Fix the A/C now! It's hot!"
  elsif ac == "no" && current < desired
    puts "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."
  else
    puts "One or more of the values was not valid"
    temperature
  end
end

temperature
