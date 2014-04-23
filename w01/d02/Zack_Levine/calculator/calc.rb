def get_user_choice

end

def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
  print "whateverman"
end

def divide(num1,num2)
if
  num2.to_f / 0
  print "#{num2}Infinity"
end
end

def divide(num1,num2)

  num1/num2
end


def multiply(num1,num2)
  num1*num2
end

def ask_question #make a function called ask question
  puts "Do u want 2 quit?"
  answer = gets.chomp
  if answer == "y"
    puts "peace mah geese"
  elsif answer == "n"
    puts "oki den stay"
  else answer 
    puts "enter y or n dummy"
  end
end

# ask_question()
