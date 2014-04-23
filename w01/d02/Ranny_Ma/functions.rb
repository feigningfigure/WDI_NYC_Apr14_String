def sqrt(num)
  return false if num < 0
  x = Math.sqrt(num)
end

def square(num)
  num*num
end

def double_of_string(word)
  return word+word if word.class == String
  "Not a string"
end

def ask_question
 puts "Do you want to quit? (y)es?"
  answer = gets.chomp
  if answer == "y"
    puts "Goodbye!"
    return true
  else
    ask_question
  end
end


