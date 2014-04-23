
print "Please tell me the current temperature:"
set_temp=gets.chomp.to_i

puts "Is the Air-conditiong functional?"
functional=gets.chomp


puts "Current temp is #{set_temp}"
puts "what is your desired temp?"
desired_temp=gets.chomp.to_i

  if functional == "yes" && set_temp > desired_temp
    puts "Turn on the AC please"

  elsif functional == "yes" && set_temp < desired_temp
    puts "Switch that AC off and let it warm up..."

  elsif functional == "no" && set_temp > desired_temp
    puts "Fix the A/C Now! It's Hot!"

  else
    puts "Fix the A/C whenever you have the chance...it's cool...Brrrrrrr."

end
