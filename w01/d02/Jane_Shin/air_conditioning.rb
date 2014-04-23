def air_con(current_temp, mode, desired_temp)

	if mode == "y" && current_temp > desired_temp
		puts "Turn on the A/C Please"
	
	elsif mode == "n" && current_temp > desired_temp
		puts "Fix the A/C now! It's hot!"

	else mode == "n" && current_temp < desired_temp
		puts "Fix the A/C whenever you have the chance... It's cool... Brrrrrrr."

	end
end


	puts "What is the current temperature?"
	current_temp = gets.chomp.to_i

	puts "Is the A/C working, (y)es or (n)o?"
	mode = gets.chomp

	puts "What is your desired temperature?"
	desired_temp = gets.chomp.to_i

	air_con(current_temp, mode, desired_temp)