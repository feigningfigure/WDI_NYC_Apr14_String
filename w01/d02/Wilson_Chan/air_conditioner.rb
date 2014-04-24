def air_conditioning(functional, current_temp, temperature)

	if functional == "Y" && current_temp > temperature 
		puts "Turn on the A/C Please"

	elsif functional == "N" && current_temp > temperature
		puts "Fix the A/C now! It's hot!"

	elsif functional == "N" && current_temp < temperature
		puts "Fix the A/C whenever you have the chance... It's cold...Brrrrrrr."

	end

end


puts "Is the air conditioner on? (Y)es or (N)o"
	functional = gets.chomp

puts "What is the room temperature?"
	current_temp = gets.chomp

puts "What temperature would you like to set the air conditioner?"
	temperature = gets.chomp

air_conditioning(functional, current_temp, temperature)