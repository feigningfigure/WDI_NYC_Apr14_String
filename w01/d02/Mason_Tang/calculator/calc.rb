


  def get_user_choice
    puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponent, (sq)uare root, (q)uit"
    user_choice = gets.chomp

  end

  def add(num1,num2)
     x = num1 + num2
     puts "The result is #{x}"
  end

  def subtract(num1,num2)
    x = num1 - num2
  puts "The result is #{x}"
  end

  def divide(num1,num2)
    x = num1 / num2
  puts "The result is #{x}"
  end

  def multiply(num1,num2)
    x = num1 * num2
    puts "The result is #{x}"
  end

  def exponents(num1,num2)
    x = num1 ** num2
    puts "The result is #{x}"
  end

  def sqrt(num1)
    x = Math.sqrt(num1)
    puts "The result is #{x}"
  end

puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponent, (sq)uare root, (q)uit"
user_choice = gets.chomp


if user_choice == "a"
  puts "Pick your first number"
  num1 = gets.chomp.to_i
  puts "Pick your second number"
  num2 = gets.chomp.to_i
  add(num1, num2)
end

if user_choice == "s"
  puts "Pick your first number"
  num1 = gets.chomp.to_i
  puts "Pick your second number"
  num2 = gets.chomp.to_i
  subtract(num1, num2)
end

if user_choice == "m"
  puts "Pick your first number"
  num1 = gets.chomp.to_i
  puts "Pick your second number"
  num2 = gets.chomp.to_i
  multiply(num1, num2)
end

if user_choice == "d"
  puts "Pick your first number"
  num1 = gets.chomp.to_i
  puts "Pick your second number"
  num2 = gets.chomp.to_i
  if num2 == 0
      puts "Infinity"
  else
  divide(num1, num2)
  end
end

if user_choice == "e"
  puts "Pick your base number"
  num1 = gets.chomp.to_i
  puts "Pick your exponent number"
  num2 = gets.chomp.to_i
  exponents(num1, num2)
end


if user_choice == "sq"
  puts "Pick a number to find the square root of"
  num1 = gets.chomp.to_i
  if num1 <= 0
    puts "false"
  else
  sqrt(num1)
end
end


if user_choice == "q"
  puts "close calculator"
else
  get_user_choice
end
