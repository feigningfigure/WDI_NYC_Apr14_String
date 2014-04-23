puts "Guess a number between 0 and 10"
comp_num = rand(0..10)
user_num = gets.chomp.to_i
def guess_again(comp_num, user_num)
	puts "Guess a number between 0 and 10"
	if user_num == comp_num
		print "Way to go! damn!"
	else
		user_num = gets.chomp.to_i
		guess_again(comp_num, user_num)
	end
end
guess_again(comp_num, user_num)


