
def process_input
  choice = get_user_choice
  puts "You chose: #{choice}"
  case choice
  when "a"
    puts "Addition!"
    num_hash = gets_nums
    print "Your answer is: "
    puts add(numbers[0],numbers[1])
  when "s"
    puts "Subtraction!"
    num_hash = gets_nums
    print "Your answer is: "
    puts subtract(numbers[0],numbers[1])
  when "m"
    puts "Multiplication!"
    num_hash = gets_nums
    print "Your answer is: "
    puts multiply(numbers[0],numbers[1])
  when "d"
    puts "Division!"
    num_hash = gets_nums
    print "Your answer is: "
    puts divide(numbers[0],numbers[1])
  end
end

def get_user_choice
  print "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide"
  input = gets.chomp
  return input
end

def gets_num
  puts "Enter Number 1:"
  num1 = gets.chomp.to_i
  puts "Enter Number 2:"
  num2 = gets.chomp.to_i
  numbers = [num1,num2]
  process_input
end

def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def divide(num1,num2)
  if num2 == 0
    puts "The answer is Infinity"
  else
  num1/num2
  end
end

def multiply(num1,num2)
  num1*num2
end

get_user_choice
