#give users a menu of operations
#users can choose from menu
#users can enter 2 numbers to perform operations
#show user result
#process can continue until user selects a quit option in menu
#(+, -, *, /)
#(exponents & square roots)

def get_user_choice
	puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponent, (sq)uare root, (q)uit"
	choice = gets.chomp.downcase

	case choice
	when "a"
		puts "What is your first integer? "
		num1 = gets.chomp.to_i
		puts "What is your second integer? "
		num2 = gets.chomp.to_i
		answer = add(num1, num2)
		puts "Answer is #{answer}!"
		#puts "Would you like to continue? (y, n)"
		#option = gets.chomp
		#if option == y
		#	get_user_choice
		#elsif 
		#	option == n
		#	puts "Have a nice day!"
		#end
		get_user_choice
	when "s"
		puts "What is your first integer? "
		num1 = gets.chomp.to_i
		puts "What is your second integer? "
		num2 = gets.chomp.to_i
		answer = subtract(num1, num2)
		puts "Answer is #{answer}!"
		get_user_choice
	when "d"
		puts "What is your first integer? "
		num1 = gets.chomp.to_i
		puts "What is your second integer? "
		num2 = gets.chomp.to_i
		answer = divide(num1, num2)
		puts "Answer is #{answer}!"
		get_user_choice
	when "m"
		puts "What is your first integer? "
		num1 = gets.chomp.to_i
		puts "What is your second integer? "
		num2 = gets.chomp.to_i
		answer = multiply(num1, num2)
		puts "Answer is #{answer}"
		get_user_choice
	when "e"
		puts "What is your first integer? "
		num1 = gets.chomp.to_i
		puts "What is your second integer? "
		num2 = gets.chomp.to_i
		answer = exponent(num1, num2)
		puts "Answer is #{answer}"
		get_user_choice
	when "sq"
		puts "What is your integer? "
		num1 = gets.chomp.to_i
		answer = square_root(num1)
		puts "Answer is #{answer}!"
		get_user_choice
	when "q"
		puts "Have a nice day!"
	end
end

def add(num1,num2)
	num1 + num2
end

def subtract(num1,num2)
	num1 - num2
end

def divide(num1,num2)
	if num2 == 0
		"Infinity"
	else 
		num1 / num2
	end
end

def multiply(num1,num2)
	num1 * num2
end

def exponent(num1, num2)
	num1 ** num2
end

def square_root(num1)
	Math.sqrt(num1)
end

# def get_user_choice
# 	puts "enter your choice: (a)dd, (s)ubtract, (d)ivide, (m)ultiply, (q)uit"
# 	choice = gets.chomp.downcase
# 	get_user_choice(choice)
# end

# puts "enter your choice: (a)dd, (s)ubtract, (d)ivide, (m)ultiply, (q)uit"
# user_choice = gets.chomp.downcase
# get_user_choice(user_choice)

get_user_choice
