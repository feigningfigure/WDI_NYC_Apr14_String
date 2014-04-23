
# ##Part 3

# ###Calculator:
# -You will be building a calculator.  A calculator can perform multiple arithmetic operations.  Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.

# ###Specification:
# - A user should be given a menu of operations
# - A user should be able to choose from the menu
# - A user should be able to enter two numbers on which to perform the operations
# - A user should be shown the result
# - This process should continue until the user selects a quit option from the menu

# #####Phase 1
# - Calculator functionality
# 	- Calculator should be able to do basic arithmetic (+,-, *, /)

# #####Phase 2
# - Advanced Calculator functionality
# 	- Calculator should be able to do basic arithmetic (exponents, square roots)

# #####Bonus
# ######Back-end
# - Make it such that you can perform continuous operations (i.e. 4 X 10 / 2 + 6 - 1)







# choice = String.new()
# num1 = Int.new()
# num2 = Int.new()


def get_user_choice
	puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide"
	choice = gets.chomp.to_s
	puts "enter your first number"
	num1 = gets.chomp.to_i
	puts "enter your second number"
	num2 = gets.chomp.to_i
	case choice
	when "a"
		puts "Answer is #{add(num1,num2)}"
	when "s"
		puts "Answer is #{subtract(num1,num2)}"
	when "m"
		puts "Answer is #{multiply(num1,num2)}"
	when "d"
		puts "Answer is #{divide(num1,num2)}"
	end
	puts ""
	puts ""
	get_user_choice()
end



def add(num1,num2)
	return num1+num2
end



def subtract(num1,num2)
	return num1-num2
end



def divide(num1,num2)
	if num2 == 0
		return "Infinity"
	else 
		return num1/num2
	end
end



def multiply(num1,num2)
	return num1*num2
end


get_user_choice()

