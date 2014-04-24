
def get_user_choice
  print 'enter your choice:
  puts "- (a)dd"
  puts "- (s)ubtract"
  puts "- (m)ultiply"
  puts "- (d)ivide"
  puts "- (e)xpontent
  puts "- square(r)oot"
  puts "- (q)uit"'

  operation = gets.chomp.downcase

  case operation
  when "a"
    numbers = gets_nums
    puts add(numbers[0], numbers[1])
     "#{add(num1,num2)}"
    get_user_choice()
  when "s"
    puts "What is your first number?"
    num1 = gets.chomp.to_i
    puts "What is your second number?"
    num2 = gets.chomp.to_i
    subtract(num1, num2)
    puts "#{subtract(num1,num2)}"
    get_user_choice()
  when "m"
  puts "What is your first number?"
    num1 = gets.chomp.to_i
    puts "What is your second number?"
    num2 = gets.chomp.to_i
    multiply(num1, num2)
    puts "#{multiply(num1,num2)}"
    get_user_choice()
  when "d"
  puts "What is your first number?"
    num1 = gets.chomp
    puts "What is your second number?"
    num2 = gets.chomp
    divide(num1, num2)
    puts "#{divide(num1,num2)}"
    get_user_choice()
  when "e"
 puts "What is your first number?"
    num1 = gets.chomp.to_i
    puts "What is your second number?"
    num2 = gets.chomp.to_i
  puts "#{exponent(num1,num2)}"
  get_user_choice()
when "r"
  puts "What number would you like the square root of?"
  num = gets.chomp.to_i
  puts "#{squareroot(num)}"
  get_user_choice()
when "q"
  puts "So long and thanks for all the fish!"
  else
    puts "Please enter 'a', 's', 'm', or 'd', 'e', 'r'"
    get_user_choice()
  end
end

def get_nums
  puts "Enter Number 1:"
  num1 = gets.chomp.to_i
  puts "Enter Number 2:"
  num2 = gets.chomp.to_i
  return []
end


def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def divide(num1,num2)
  if num2 == 0
    return 'Infinity'
  else
  num1.to_f / num2.to_f
end
end

def multiply(num1,num2)
  num1 * num2
end

def squareroot(num)
  Math.sqrt(num)
end

def exponent(num1, num2)
  num1 ** num2
end

get_user_choice
