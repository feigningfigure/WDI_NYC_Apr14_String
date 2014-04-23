 def sqrt(num)
    return false if num < 0
    x = Math.sqrt(num)
    x
  end

def square(num)
    num * num
  end

def double_of_string(string)
  string*2
end

def double_of_string



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
