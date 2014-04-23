 #guess the number


rand_num = rand(1..10)

def guessing_game (rand_num)
  puts "please pick a number"
  gues_num = gets.chomp.to_i
  if  gues_num == rand_num
  puts "Congratulation you are correct"
  else
  puts "Sorry  are incorrect"
  guessing_game (rand_num)



 end

end
guessing_game (rand_num)





