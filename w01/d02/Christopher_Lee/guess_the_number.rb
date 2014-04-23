def guess_the_number
  # get user input
  puts "Pick a number between 0 and 10"
  guess = gets.chomp.to_i
  # calls ruby's rand method. the arguement specifies the range
  computer_number = rand(10)
  if guess > 10
    puts "\n"
    puts "Sorry, your guess must be a number between 0 and 10."
    # recursively calls the method on itself if the number is too big
    guess_the_number
  elsif guess == computer_number
    puts "You Win! You Guessed the Number!"
  else
    puts "\n"
    puts "Not quite! Give it another shot."
    # recursively calls the method on itself if the number is not random
    guess_the_number
  end
end

guess_the_number
