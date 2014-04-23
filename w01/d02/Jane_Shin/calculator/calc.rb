def func_do(func)

	if func == "a"
		puts "What is the first number?"
		num1 = gets.chomp.to_i
		puts "What is the second number?"
		num2 = gets.chomp.to_i
		add(num1,num2)
		puts "#{add(num1,num2)}"

	elsif func == "s"
		puts "What is the first number?"
		num1 = gets.chomp.to_i
		puts "What is the second number?"
		num2 = gets.chomp.to_i
		subtract(num1,num2)
		puts "#{subtract(num1,num2)}"

	elsif func == "d"
		puts "What is the first number?"
		num1 = gets.chomp.to_i
		puts "What is the second number?"
		num2 = gets.chomp.to_i
		divide(num1,num2)
		puts "#{divide(num1,num2)}"

	elsif func == "m"
		puts "What is the first number?"
		num1 = gets.chomp.to_i
		puts "What is the second number?"
		num2 = gets.chomp.to_i
		multiply(num1,num2)
		puts "#{multiply(num1,num2)}"

	elsif func == "ex"
		puts "What is the first number?"
		num1 = gets.chomp.to_i
		puts "What is the second number?"
		num2 = gets.chomp.to_i
		exponent(num1,num2)
		puts "#{exponent(num1,num2)}"

	elsif func == "sqr"
		puts "What is the first number?"
		num1 = gets.chomp.to_i
		puts "What is the second number?"
		num2 = gets.chomp.to_i
		exponent(num1,num2)
		puts "#{sqroot(num1,num2)}"

 	else func == "q"
		print "Left calculator"
	end

	unless func == "q" get_user_choice(func)

end

def add(num1,num2)
	return num1 + num2
end

def subtract(num1,num2)
	return num1 - num2
end

def divide(num1,num2)
	if num2 == 0
		return "Infinity"
	else
	 return num1 / num2
	end
end

def multiply(num1,num2)
	return num1 * num2
end

def exponent(num1,num2)
	return num1 ** num2
end

def sqroot(num1,num2)
	return Math.sqrt(num1+num2).to_i
end

def get_user_choice(func)
	puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (ex)ponent, (sqr)oot"
		func = gets.chomp
	func_do(func)
end


puts "Welcome to calculator"
puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (ex)ponent, (sqr)oot"
	func = gets.chomp
func_do(func)
