    def guess_number(num)

    random_number = rand(10)

    if random_number == num
      puts "Congrats! You guessed it!"
    else
        puts "Guess again!"
        num = gets.chomp.to_i
        guess_number(num)
    end
end

    puts "Guess any number between 1 and 10."

    num = gets.chomp.to_i

    guess_number(num)
