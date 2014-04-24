puts "Guess a number from 0 - 10..."
rand_num = rand(0 .. 10)
user_num = gets.chomp.to_i

def guess_method(user_num, rand_num)
  puts "Guess a number from 0 - 10..."

  if user_num == rand_num
    puts "Awesome, you must be psychic."

  else 
  	puts "Guess again."
  	user_num = gets.chomp.to_i
    guess_method(user_num, rand_num)
  end
end

guess_method(user_num, rand_num)
