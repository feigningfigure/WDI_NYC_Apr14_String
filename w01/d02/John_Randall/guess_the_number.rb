# Part 2

# Guess the number:

# You are to generate a basic "guess my number" game. The computer will pick a random number between 0 and 10. The user will guess the number until they guess correctly.
# Specification:

# The user should be asked to guess a number
# If the user's guess is correct, the user should see a congratulatory message
# If the user's guess is not correct, the user should be asked to guess the number again.
# This should be done in a new file called guess_the_number.rb



def get_number
	$guess = gets.chomp
end

def test_range
	while $guess.class != Fixnum || $guess <=0 || $guess >= 10
		puts "please guess a number between 0 and 10?"
		go()
	end
end

def test_target
	if $guess == target
		puts "Correct! The number was #{target}" # If the user's guess is correct, the user should see a congratulatory message
	else
		puts "nope. #{guess} isn't the number I'm thinking of. Try again" # If the user's guess is not correct, the user should be asked to guess the number again.
		go()
	end
end

def go
	get_number
	test_range
	test_target
end


# $target = SecureRandom.random_number(9)+1
$target = 6
$guess = nil
puts "I'm thinking of an integer between 0 and 10. Guess what it is."
go()


