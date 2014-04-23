
# Part1

# Finish the below conditionals that were started in class:

# Drinking age?

# Define a function that takes an age as an argument.
# If the age is less than 21, print an appropriate message.
# If the age is over 21, print an appropriate message.

# Air Conditioning

# Define a function that takes, as arguments, the current temperature, whether or not the A/C is functional, and a desired temperature.
# If the air conditioner is functional and the current temperature is above the the desired temperature... display "Turn on the A/C Please"
# If the air conditioner is non-functional and the current temperature is above the the desired temperature... display "Fix the A/C now! It's hot!"
# If the air conditioner is non-functional and the current temperature is below the the desired temperature... display "Fix the A/C whenever you have the chance... It's cool...Brrrrrrr."



# City Boroughs

# Define a function that takes, as arguments, the borough in which someone lives.
# Depending on the answer, print an appropriate response of your choosing.






def drinkingAge(age)
	while age.class != Fixnum || age <0 || age >130					#BUG: When user enters a non-numberical string, this while loop still exits. User gets 'No id. No booze' method.
		puts "Sorry, I didn't get that. How old are you?"
		age = gets.chomp.to_i
	end
	if age <21
		puts "No Id. No booze."
	elsif age >=21 
		puts "C'mon in."
	else
		puts "error: User should never see this"
	end
end

#drinkingAge("x")


class AirConditionerDecider
	def decide(AC_functional_boolean, current_temperature, desired_temperature)
		if AC_functional_boolean && current_temperature > desired_temperature
			display("Turn on the A/C please.")
		elsif AC_functional_boolean == false && current_temperature > desired_temperature
			display("Fix the A/C now! It's hot!")
		elsif AC_functional_boolean == false && current_temperature < desired_temperature
			display "Fix the A/C whenever you have the chance... It's cool.... Brrrrrrr."
		else
		end
	end

	def display(input)		#Abstract out the display class because "puts" works for now, but may eventually need to connect to external I/O
		puts input
	end
end



def cityBououghsRespond(input_borough)
	case input_borough.downcase
	when "manhattan"
		puts "...yuppie"
	when "brooklyn"
		puts "<snicker> hipster"
	when "queens"
		puts "I'm sorry"
	when "bronx"
		puts "enjoy your commute"
	when "statin island"
		puts "where?"
	end
end

