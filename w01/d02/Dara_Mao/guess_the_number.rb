rand_num= rand(0..10)

def guess_num(rand_num)
  puts "Please guess a number between 0 to 10:"
  user_guess = gets.chomp.to_i

  if user_guess == rand_num
    puts "Hooray! You guessed the number."

  else
    puts "Try it again."
  return guess_num(rand_num)
  end
end
guess_num(rand_num)
