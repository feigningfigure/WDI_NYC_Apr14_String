def generate_random_number
  the_golden_number = rand(1...10)
  guess_that_number(the_golden_number)
end

def guess_that_number(random_number)
  puts "guess a number 1-10!"
  number_guess = gets.chomp
  if number_guess.to_i == random_number
    puts "Congrats, you got it!"
  else guess_that_number(random_number)
  end
end

generate_random_number

