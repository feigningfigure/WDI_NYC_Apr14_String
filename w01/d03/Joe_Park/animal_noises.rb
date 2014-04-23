#output: What animal would you like to hear?
#input: cat
#output: Meow!

#output: What animal would you like to hear?
#input: dog
#output: Woof


def animal_noises
	user_input = "default" #default could have been anything its a placeholder that is NOT Q
	while (user_input != "Q")
		case user_input
			when "cat" 
				puts "Meow!"
			when "dog" 
				puts "Woof"
		end
		puts "What animal would you like to hear? (dog or cat) or type Q to quit"
		user_input = gets.chomp	
	end
end

animal_noises

# def menu
# 	puts "What animal would you like to hear? (dog or cat) or type Q to quit"
# 	user_input = gets.chomp

# 	while (user_input != "Q")
# 		animal_noises(user_input)
# 	end
# end

#menu
#calling menu



