def random_guess
  number = rand(10)
  # puts number (uncomment and delete parenthesis to test)
  puts "Guess my number between 1 and 10! You'll never get it."
  guess = gets.chomp.to_i
  if guess == number; puts "OMG CONGRATULATIONS!!"
  else
    puts "Sorry try again."
    random_guess
end
end

random_guess
