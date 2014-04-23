
puts "Guess a number from 0 to 10"
random_num = rand(0 .. 10)
user_num = gets.chomp.to_i
def guess_num(user_num, random_num)

puts "Guess a number from 0 to 10"

if user_num == random_num
  puts "Congratulations you win!"
else
  puts "Wrong answer"
  user_num = gets.chomp.to_i
  guess_num(user_num, random_num)
end
end

guess_num(user_num, random_num)

=begin

pending time- prompt user to quit

def ask_question
  puts "Do you want to quit? (y)es?"
  answer = gets.chomp
  if answer == "y"
    puts "Goodbye!"
    return true
  else
    # asks question again
    ask_question
  end
end
=end
