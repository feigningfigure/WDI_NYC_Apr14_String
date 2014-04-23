generated_num = (rand() * 10).floor

def guessing_game(rand_num)
    puts "Guess the number between 1 and 10 I just made."
    guess = gets.chomp.to_i
    if guess == rand_num
    print "You got it!"
    elsif guess != rand_num
    print "No, sorry.  Do you want to guess again? (Y/N)"
    response = gets.chomp.upcase
      if response == "Y"
      guessing_game(rand_num)
      else
      puts "OK, thanks for playing! The number was #{rand_num}"
    end
end

guessing_game(generated_num)




