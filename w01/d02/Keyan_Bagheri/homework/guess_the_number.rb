def random_number
	computer_number = rand(0..10) #picking a random number between 0 and 10
end

def guess_the_number(computer_number)
	puts "Guess a number between 0 and 10"
	num = gets.chomp.to_i #getting number from user and making it integer
	if num == computer_number
		puts "Good guess!"
	elsif num < computer_number
		puts "Too low. Guess higher"
		guess_the_number(computer_number)
	else
		puts "Too high. Guess lower"
		guess_the_number(computer_number)
	end
end

computer_number = random_number
guess_the_number(computer_number)