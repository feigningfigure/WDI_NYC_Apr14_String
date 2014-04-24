def animal_noises(user_input)	
		case user_input
			when "cat"
				puts "Meow"	
				menu
			when "dog"
				puts "Woof"
				menu
		end
	end
end

def menu
	puts "What animal would you like to hear?Type Q to quit"
	user_input = gets.chomp
	while (user_input != "Q")
		animal_noises(user_input)
	end
	animal_noises
end