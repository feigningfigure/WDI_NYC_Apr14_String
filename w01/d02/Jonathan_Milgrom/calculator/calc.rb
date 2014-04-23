





puts "This is a calculator.  You will be able to do basic arithmetic on two numbers."
puts "Please enter your first number: "
num1 = gets.chomp.to_i
puts "Please enter your second number: "
num2 = gets.chomp.to_i
puts "please chose one of +, -, *, and /"
oper = gets.chomp


def calculator(num1, num2, oper)


	def get_user_choice(num1, num2, oper)
		puts "This is a calculator.  You will be able to do basic arithmetic on two numbers."
		puts "Please enter your first number: "
		num1 = gets.chomp.to_i
		puts "Please enter your second number: "
		num2 = gets.chomp.to_i
		puts "please chose one of +, -, *, and /"
		oper = gets.chomp

		calculator(num1, num2, oper)
	end

	def add(num1,num2)
		num1 + num2
	end

	def subtract(num1,num2)
		num1 - num2
	end

	def divide(num1,num2)
		num1 / num2
	end

	def multiply(num1,num2)
		num1 * num2
	end
	puts "this prgram has quit" if oper == "Q"

	if oper == "+"
		puts add(num1,num2)
		get_user_choice(num1, num2, oper)
	elsif oper == "-"
		puts subtract(num1,num2)
		get_user_choice(num1, num2, oper)
	elsif oper == "*"
		puts multiply(num1,num2)
		get_user_choice(num1, num2, oper)
	elsif oper == "/"
		puts divide(num1,num2)
		get_user_choice(num1, num2, oper)
	else
		return
	end
end

calculator(num1, num2, oper)


