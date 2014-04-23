def guess(num)

	if num == random_number = rand(1..10)
		puts "Congrats, you guessed right."
		#return true
	else
		puts "Sorry, try again."
		num = gets.chomp.to_i
		guess(num)
	end
end

puts "Guess the number I generated between 1 and 10."
	num = gets.chomp.to_i

guess(num)

