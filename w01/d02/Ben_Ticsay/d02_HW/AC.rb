# Define a function that takes, as arguments, the current temperature, whether or not the A/C is functional, and a desired temperature. FUNCTION
# If the air conditioner is functional and the current temperature is above the the desired temperature... display "Turn on the A/C Please" CONDITIONAL
# -If the air conditioner is non-functional and the current temperature is above the the desired temperature... display "Fix the A/C now! It's hot!" CONDITIONAL
# -If the air conditioner is non-functional and the current temperature is below the the desired temperature... display "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr." #CONDITIONAL

print "Is the Air Conditoner functional? yes or no?"
func = gets.chomp

	if func == "yes"
		puts "Is the current temperature above desired? yes or no?"
		temp = gets.chomp
	end

		if temp == "yes"
			puts "Turn on the A/C Please"

		elsif temp == "no"
			puts "We good then."
	end		

	if func == "no"
		puts "Is the current temperature above or below desired? above or below?"
		temp = gets.chomp

		if temp == "above"
			puts "Fix the A/C now! It's hot!"

		elsif temp == "below"
			puts "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."

		else 
			puts "We good."
	end 
			
end

