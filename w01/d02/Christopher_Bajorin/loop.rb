
def ask_question
  "Do you want to quit? (y)es?"
  answer = gets.chomp
  if answer == "y"
    puts "Goodbye!"
    return true
  else
    ask_question
  end
end
