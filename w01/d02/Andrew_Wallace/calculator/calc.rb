def get_user_choice
  print 'enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xpontent, square(r)oot'
  operation = gets.chomp.downcase

  case operation
  when "a"
  puts "What is your first number?"
  num1 = gets.chomp.to_i
  puts "What is your second number?"
  num2 = gets.chomp.to_i
    add(num1, num2)
   puts "#{add(num1,num2)}"
  when "s"
  puts "What is your first number?"
  num1 = gets.chomp.to_i
  puts "What is your second number?"
  num2 = gets.chomp.to_i
    subtract(num1, num2)
    puts "#{subtract(num1,num2)}"
  when "m"
  puts "What is your first number?"
  num1 = gets.chomp.to_i
  puts "What is your second number?"
  num2 = gets.chomp.to_i
    multiply(num1, num2)
    puts "#{multiply(num1,num2)}"
  when "d"
  puts "What is your first number?"
  num1 = gets.chomp.to_i
  puts "What is your second number?"
  num2 = gets.chomp.to_i
    divide(num1, num2)
    puts "#{divide(num1,num2)}"
  when "e"
    puts "What is your first number?"
  num1 = gets.chomp.to_i
  puts "What is your second number?"
  num2 = gets.chomp.to_i
  puts "#{exponent(num1,num2)}"
when "r"
  puts "What number would you like the square root of?"
  num = gets.chomp.to_i
  puts "#{squareroot(num)}"
  else
    puts "Please enter 'a', 's', 'm', or 'd', 'e', 'r'"
  end
end

# Get numbers method to clean up above code
=begin
def get_numbers(num1, num2)
  puts "What is your first number?"
  num1 = gets.chomp.to_i
  puts "What is your second number?"
  num2 = gets.chomp.to_i
end
=end

def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1.to_i - num2.to_i
end

def divide(num1,num2)
  if num2 == 0
    return 'Infinity'
  else
  num1.to_i / num2.to_i
end
end

def multiply(num1,num2)
  num1.to_i * num2.to_i
end

def squareroot(num)
  Math.sqrt(num)
end

def exponent(num1, num2)
  num1 ** num2
end

get_user_choice
