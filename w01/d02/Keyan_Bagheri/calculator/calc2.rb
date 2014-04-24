def get_nums
	puts "What is the first number in your operator?"
	answer = gets.chomp.to_i

	operation(answer)
end

def operation(answer)
	op = get_user_choice
	if op == "q"
		puts "Your answer is #{answer}"
		return
	elsif op == "r"
		puts "The square root of your current number is..."
	elsif op == "w"
		puts "Your number rounded down is..."
	elsif op == "u"
		puts "Your number rounded up is..."
	elsif op == "a"
		puts "Which number would you like to add?"
		number = gets.chomp.to_i
	elsif op == "s"
		puts "Which number would you like to subtract?"
		number = gets.chomp.to_i
	elsif op == "m"
		puts "Which number would you like to multiply?"
		number = gets.chomp.to_i
	elsif op == "d"
		puts "Which number would you like to divide?"
		number = gets.chomp.to_i
	elsif op == "e"
		puts "Which number would you for the exponent?"
		number = gets.chomp.to_i
	end

	case op
	when "q"
		return
	when "w"
		answer = answer.floor
		puts "=> #{answer}"
		operation(answer)		
	when "u"
		answer = answer.ceil
		puts "=> #{answer}"
		operation(answer)
	when "r"
		answer = square_root(answer)
		puts "=> #{answer}"
		operation(answer)
	when "a"
		answer = add(answer,number)
		puts "=> #{answer}"
		operation(answer)
	when "s"
		answer = subtract(answer,number)
		puts "=> #{answer}"
		operation(answer)
	when "m"
		answer = multiply(answer,number)
		puts "=> #{answer}"
		operation(answer)
	when "d"
		answer = divide(answer,number)
		puts "=> #{answer}"
		operation(answer)
	when "e"
		answer = exponent(answer,number)
		puts "=> #{answer}"
		operation(answer)
	end
end

def get_user_choice
	puts "Which operator would you like now?"
	puts "(a)dd, (s)ubtract, (m)ultiply, (d)ivide, square (r)oot, (e)xponent"
	puts "you may round do(w)n or round (u)p"
	puts "(q) will quit and give you your final answer"
	input = gets.chomp
	return input
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

get_nums