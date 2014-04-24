# print calculation question to user
puts "Would you like to (a)dd, (s)ubtract, (d)ivide, or (m)ultiply?"
# print quit option to user
puts "If you would like to quit, please press (q)"
puts "\n"

user_input = gets.chomp

case
	when user_input == "a"
	   puts "To add, please type your first number in and press enter."
		number1 = gets.chomp
	   puts "Please type the second number in and press enter."
		number2 = gets.chomp
	   answer = number1.to_i + number2.to_i
	   puts "The result is #{answer}"
	

	when user_input == "s"
	   puts "To subtract, please type your first number in and press enter."
		number1 = gets.chomp
	   puts "Please type the second number in and press enter."
		number2 = gets.chomp
	   answer = number1.to_i - number2.to_i
	   puts "The result is #{answer}"
	

	when user_input == "d"
	   puts "To divide, please type your first number in and press enter."
		number1 = gets.chomp
	   puts "Please type the second number in and press enter."
		number2 = gets.chomp
	   answer = number1.to_f / number2.to_f
	   puts "The result is #{answer}"
	

	when user_input == "m"
	   puts "To divide, please type your first number in and press enter."
		number1 = gets.chomp
	   puts "Please type in the second number and press enter."
		number2 = gets.chomp
	   answer = number1.to_f * number2.to_f
	   puts "The result is #{answer}"
	

	when user_input == "q"
		puts "Goodbye!"
	
	end