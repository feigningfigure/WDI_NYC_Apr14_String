puts "What is the current temperature?"
	current_temp = gets.chomp.to_i
	puts "Is the A/C working correctly? Please answer Y or N"
	functional = gets.chomp.to_s
	puts "What is your desired temperature?"
	desired_temp = gets.chomp.to_i

if functional == "Y" && current_temp > desired_temp
	puts "Turn on the A/C Please"
elsif functional == "N" && current_temp > desired_temp
	puts "Fix the A/C now! It's hot"
elsif current_temp == desired_temp
	puts "no problem here"
else
	puts "Fix the A/C whenever you have the chance... It's cool...Brrrr"
end


			