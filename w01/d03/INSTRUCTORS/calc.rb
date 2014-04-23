def main_loop

end

def ask
  choice = get_user_choice
  puts "You chose: #{choice}"
  case choice
  when "a"
    # add(num1,num2)
    puts "Addition!"
    numbers = get_nums
    print "Your answer is: "
    puts add(numbers[0],numbers[1])
  when "s"
    puts "Subtraction!"
    numbers = get_nums
    print "Your answer is: "
    puts subtract(numbers[0],numbers[1])
  when "m"
    puts "Multiplication!"
    numbers = get_nums
    print "Your answer is: "
    puts multiply(numbers[0],numbers[1])
  when "d"
    puts "Division!"
    numbers = get_nums
    print "Your answer is: "
    puts divide(numbers[0],numbers[1])
  end
  puts "Do you want to try again? (y)es or (n)o?"
  answer = gets.chomp
  if answer != "n"
    ask
  end
end

def get_user_choice
  print "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide"
  input = gets.chomp
  return input
end

def get_nums
  puts "Enter Number 1:"
  num1 = gets.chomp.to_i
  puts "Enter Number 2:"
  num2 = gets.chomp.to_i
  return [num1,num2]
end

def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def divide(num1,num2)
  return 'Infinity' if num2 == 0
  num1/num2
end

def multiply(num1,num2)
  num1*num2
end

ask
# get_nums
