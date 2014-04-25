# generate a random number and asks the user to guess

def generate_number
    generated = rand(1...10) # random number, excludes 10
    guess(generated) #runs guess method using the random number
end

def guess(random_number)

  puts "Guess the generated number (1-9)"
  guessed_number = gets.chomp.to_i # gets user input

  if guessed_number == random_number # checks if number is correct
    puts "Congratulations, you ACTUALLY got it right!"
  else
    puts "WRONG! Try again."
    guess(random_number) #loops to the user guess
  end
end

generate_number
