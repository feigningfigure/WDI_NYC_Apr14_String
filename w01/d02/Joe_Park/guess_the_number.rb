#prompt user for number 0-10
#if user correct congratulate
#if user incorrect prompt for another
def number_generator
	rand(0..10)
end


def guesser(my_num)
	#ask user for input
	puts "What number am I thinking of from 0-10? "
	num = gets.chomp.to_i
	if num != my_num
		puts "Wrong! Guess again!"
		guesser(my_num)
	elsif num == my_num
		puts "Correct! You guessed it right!"
	end
end

puts "I am thinking of a number."
my_num = number_generator #if you replace number_generator with rand(0..10) you can do away with the first method
guesser(my_num)

