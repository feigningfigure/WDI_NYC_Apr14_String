
	def get_user_choice
		puts "Enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponents, (sq)uare root, (q)uit"
		user_choice = gets.chomp
	end

	def add(num1,num2)
		x = num1 + num2
		puts "The result is equal to #{x}"
	end

	def subtract(num1,num2)
		x = num1 - num2
		puts "The result is equal to #{x}"
	end

	def divide(num1,num2)
		x = num1 / num2
		puts "The result is equal to #{x}"
	end

	def multiply(num1,num2)
		x = num1 * num2
		puts "The result is equal to #{x}"
	end

	def exponents(num1,num2)
		x = num1 ** num2
		puts "The result is equal to #{x}"
	end

	def square_root(num1)
  		x = Math.sqrt(num1)
		puts "The result is equal to #{x}"
	end

	puts "Enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponents, (sq)uare root, (q)uit"
	user_choice = gets.chomp

	if user_choice == "a"
		puts "Enter first variable"
		num1 = gets.chomp.to_i
		puts "Enter second variable"
		num2 = gets.chomp.to_i
		add(num1, num2)
	end

	if user_choice == "s"
		puts "Enter first variable"
		num1 = gets.chomp.to_i
		puts "Enter second variable"
		num2 = gets.chomp.to_i
		subtract(num1, num2)
	end

	if user_choice == "m"
		puts "Enter first variable"
		num1 = gets.chomp.to_i
		puts "Enter second variable"
		num2 = gets.chomp.to_i
		multiply(num1, num2)
	end

	if user_choice == "d"
		puts "Enter first variable"
		num1 = gets.chomp.to_i
		puts "Enter second variable"
		num2 = gets.chomp.to_i
		if num2 == 0
			puts "Infinity"
		elsif divide(num1, num2)
		end
	end

	if user_choice == "e"
		puts "Enter base"
		num1 = gets.chomp.to_i
		puts "Enter exponent"
		num2 = gets.chomp.to_i
		exponents(num1, num2)
	end

	if user_choice == "sq"
		puts "Find square root of ___"
		num1 = gets.chomp.to_i
			if num1 < 0
				puts "Imaginary"
			elsif num1 == 0
				puts "Infinity"
			else
			square_root(num1)
			end
	end

	if user_choice == "q"
		puts "Goodbye!"
	else get_user_choice	
	end



