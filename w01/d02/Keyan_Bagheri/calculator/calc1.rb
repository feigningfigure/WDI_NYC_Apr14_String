def get_user_choice
	answer = nil unless answer != nil
	# puts "What operation would you like to perform?"
	print 'Enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponent, square (r)oot, (q)uit: \n'
	op = gets #get operation from user
	op = op.chomp.downcase unless op == nil
	if op == "q"
		puts "Your answer is #{answer}" #print answer for user
		puts #spaces make the code more visually pleasing
	elsif op == "r" && answer != nil
		answer == square_root(answer)
	elsif answer != nil
		puts "What is number you wish to use in the operator?"
		num1 = gets #get first number from user
		num1 = num1.chomp.to_i unless num1 == nil
	end

	if answer == nil
		answer = num1
	end

	if op == "r"
		answer = square_root(answer)
	else
	puts "What is the next number?"
	num2 = gets #get second number from user
	num2 = num2.chomp.to_i unless num2 == nil
	end

	case #choose which operation to perform based on user input
	when op == "a" then answer = add(num1,num2) 
	when op == "s" then answer = subtract(num1,num2) 
	when op == "d" then answer = divide(num1,num2) 
	when op == "m" then answer = multiply(num1,num2)
	when op == "e" then answer = exponent(num1,num2)
	end
	
	return answer
	get_user_choice
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

def square_root(num1)
	Math.sqrt(num1)
end

def exponent(num1,num2)
	num1**num2
end

get_user_choice