def get_user_choice
  print "enter yer choice: (a)dd, (s)ubt, (m)ultiply, (d)ivide"
  num1 = gets.chomp
  num1 = num1.chomp.to_i
  puts "you pressed: #{num1}"

  puts "next number dude!"
  num2 = gets.chomp
  num2 = num2.chomp.to_i
  puts "you pressed: #{num2}"

  divide(num1,num2)
end

def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def divide(num1,num2)
num1 / num2
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

get_user_choice()
# ask_question()
