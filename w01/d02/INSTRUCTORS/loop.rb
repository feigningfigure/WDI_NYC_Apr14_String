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
ask_question
