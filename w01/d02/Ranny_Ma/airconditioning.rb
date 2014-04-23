

def airconditioning(current_temp, power, desired_temp)

  if current_temp > desired_temp && power == "yes"
    puts "Turn on the A/C Please"
  elsif current_temp > desired_temp && power == "no"
    puts "Fix the A/C now! It's hot!"
  else power = "no" && current_temp < desired_temp
    puts "Fix the A/C whenever you have the chance...  It's cool...Brrrrrrr."
  end

end

puts "Please enter current temperature: "
current_temp = gets.chomp
puts "Is the AC working? "
power = gets.chomp
puts "Please enter desired temperature: "
desired_temp = gets.chomp

airconditioning(current_temp, power, desired_temp)
