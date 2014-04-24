def go
	quit_choice = false
	while quit_choice != true
		quit_choice = prompt_and_respond()
	end

end

def prompt_and_respond
	puts "What animal would you like to hear?"
	user_choice = gets.chomp
	case user_choice
		when "cat" 
			puts "Meow!"
		when "dog" 
			puts "Woof"
		when "quit" 
			puts "goodbye"
			return true
		when "q" 
			puts "goodbye"
			return true
		else
			puts "I don't know that one"
	end
	return false
end

go()

