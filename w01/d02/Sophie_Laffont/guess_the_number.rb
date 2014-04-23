
def ask_question
  puts "Pick a number between 0-10 "

user_Number = gets.chomp.to_i

if user_Number == (rand() * 10).to_i
  puts "Congratulations!"
  return true
else
  ask_question
end
end
ask_question





