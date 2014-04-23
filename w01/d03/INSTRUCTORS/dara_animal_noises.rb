
def animal_noises
	user_input = "default"
	while (user_input != "Q")
		case user_input
			when "cat"
			  puts "Meow!"
			when "dog"
			  puts "Woof"
		end
	puts "Select an animal (dog or cat) or type Q to quit"
	user_input = gets.chomp
	end	
end

animal_noises

# def menu
# 	puts "Select an animal (dog or cat) or type Q to quit"
# 	user_input = gets.chomp

# 	# while (user_input != "Q")
# 	# 	animal_noises(user_input)
# 	# end
# end

# menu

