def guessing(user_answer, random_number)
  if user_answer == random_number
    puts "Congrats! You guess the number!"
  else
    puts "Sorry, please guessing"
    user_answer = gets.chomp.to_i
    guessing(user_answer, random_number)
  end
end

puts "Guess a number 1 through 10"
user_answer = gets.chomp.to_i
random_number = rand(1..10)

guessing(user_answer, random_number)
