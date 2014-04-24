# Here we generate a number
random_num = rand(1..10)

def guess_my_number (random_num)
  print "Guess my number! (0 to 10)"
  num = gets.chomp.to_i

  if num == random_num
    puts "Congrats! You just guessed my number!"
  else
    puts "You didn't guess it. Try again"
    guess_my_number (random_num)
    # How to go back to beginning/entering number?
  end
end

guess_my_number (random_num)
