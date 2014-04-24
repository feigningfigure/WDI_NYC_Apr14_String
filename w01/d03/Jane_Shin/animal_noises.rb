def animal_noises(input)
	# while (input != "Q")
		case input
			when "cat"
				puts "Meow!"
				menu
			when "dog"
				puts "Woof"
				menu
		end
	# menu
	#end
end


def menu
puts "What animal would you like to hear, cat or dog? Type Q if you'd rather not."
	input = gets.chomp #only exists within the scope of menu function
	if input == "Q"
		puts "goodbye"
	else
		animal_noises(input)
	end
end

menu

