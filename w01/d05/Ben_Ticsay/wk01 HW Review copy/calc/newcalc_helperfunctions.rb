
# class Calculator

	def add(number1, number2)
		puts number1 + number2
	end

	def subtract(number1, number2)
		puts number1 - number2
	end

	def multiply(number1, number2)
		puts number1 * number2
	end

	def divide(number1, number2)
		puts variable / number2
	end

	def exponents(number1, number2)
		puts number1 ** number2
	end

	def sqrt(number1)
		puts Math.sqrt(number1)
	end


def begin_calc
	puts "Select an operation: (a)dditon, (s)ubtraction, (m)ultiplication, (d)ivision, (e)ponents, or (sq)uare root?"
	operation = gets.chomp
	if operation != "q"
		puts "Enter number 1:"
		number1 = gets.chomp.to_i
		if operation != "sq"
			puts "Enter number 2:"
			number2 = gets.chomp.to_i
		end
	end

	case 
		when operation == "a"
		add(number1, number2)

		when operation == "s"
		subtract(number1, number2)

		when operation == "m"
		multiply(number1, number2)

		when operation == "d"
		divide(number1, number2)

		when operation == "e" 
		exponents(number1, number2)

		when operation == "sq" 
		sqrt(number1)

	end
	
	if operation != "q"
		begin_calc
end
end

begin_calc







