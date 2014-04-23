
def calculator
	puts %{
 Please choose the operation you need to perform by putting just one letter:

	(a)dd
	(s)ubstract
	(m)ultiply
	(d)ivide
	s(q)uare root
	(e)xponent
	e(x)it to abort}
	entry = gets.chomp

	case entry 
		when "a"
			puts "Please, insert two  digits separated by space (e.g. 10 5 to perform 10 + 5)"
			#need to expand to more digits given that I choosed array to store
			elements = gets.chomp 
			array = elements.split
			p result = array[0].to_i + array[1].to_i
			#calculator doesn't work for now because of scope 
			calculator
		when "s" 
			puts "Please, insert two  digits separated by space (e.g. 10 5 to perform 10 - 5)"
			#need to expand to more digits given that I choosed array to store
			elements = gets.chomp 
			array = elements.split
			p result = array[0].to_i - array[1].to_i
			calculator
		when "m"
			puts "Please, insert two  digits separated by space (e.g. 10 5 to perform 10 * 5)"
			#need to expand to more digits given that I choosed array to store
			elements = gets.chomp 
			array = elements.split
			p result = array[0].to_i * array[1].to_i
			calculator
		when "d"
			puts "Please, insert two  digits separated by space (e.g. 10 5 to perform 10 / 5)"
			#need to expand to more digits given that I choosed array to store
			elements = gets.chomp 
			array = elements.split
			p result = array[0].to_i / array[1].to_i
			calculator
		when "sq"
			puts "Please, insert a digit for square root"
			#need to expand to more digits given that I choosed array to store
			elements = gets.chomp.to_i
			p Math.sqrt(elements)
			calculator
		when "e"
			puts "Please, insert two  digits separated by space (e.g. 10 5 to raise 10 to the power of 5)"
			#need to expand to more digits given that I choosed array to store
			elements = gets.chomp 
			array = elements.split
			p result = array[0].to_i ** array[1].to_i
			calculator
		when "exit"
			Process.exit(0)
	end
end

p calculator
#p Calculator.new.start