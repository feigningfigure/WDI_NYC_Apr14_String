Name: Victor_Rodriguez
Email: rodriguezva@hotmail.com
GitHub: 

def air_condition(ctemp, dtemp, working)
	
	if working == "yes" && ctemp > dtemp
	 	puts "Turn on the A/C"
	elsif working == "no" && ctemp > dtemp
	 	puts "Fix the A/C now! It's hot!"
	elsif working == "no" && ctemp < dtemp
	 	puts "Fix the A/C whenever you have the chance... It's cool...Brrr"
	end

end

puts "Please enter current temperature"
ctemp = gets.chomp.to_i
puts "Please enter desired temperature"
dtemp = gets.chomp.to_i
puts "Is the air conditioner working, yes or no?"
working = gets.chomp
 
air_condition(ctemp, dtemp, working)
