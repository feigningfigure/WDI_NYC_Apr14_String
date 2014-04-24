puts "Hello there, guess a number between 1 through 10."

user_number = gets.chomp
game_number = rand(1..10)

def game(user_number, game_number)

	if user_number == game_number
		puts "You guessed correctly. Congratulations!"

	else 
		puts "Sorry, you guessed incorrectly, try again."
		user_number = gets.chomp.to_i
		# you can call a function inside a function
		game(user_number, game_number)

	end

end

game(user_number, game_number)





 

