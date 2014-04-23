def conditioner(temperature, operate, desired)

	if operate == "works" && temperature > desired
		puts "Turn on the A/C Please"
	elsif operate == "doesn't work" && temperature > desired
		puts "Fix the A/C now! It's hot!"
	elsif operate == "doesn't work" && temperature < desired
		puts "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."
	else 
		puts "I can't understand you. Please, check your input (should be digit, 'works' or 'doesn't work', digit) or you don't need a conditioner"
	end
end
