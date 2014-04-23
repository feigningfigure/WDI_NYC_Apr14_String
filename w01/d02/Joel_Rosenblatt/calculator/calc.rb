def get_user_choice
  puts "Would you like to add, subtract, divide, multiply, square, exponential, or exit?"
  choice = gets.chomp.downcase
  if choice == "add"
    add
  elsif choice == "subtract"
    subtract
  elsif choice == "divide"
    divide
  elsif choice == "multiply"
    multiply
  elsif choice == "square"
    sqrt
  elsif choice == "exponential"
    exp
  elsif choice == "exit"
    exit
  else puts "Not a valid action."
    get_user_choice
  end
end

def add
  puts "First value?"
  num1 = gets.chomp.to_i
  puts "Second value?"
  num2 = gets.chomp.to_i
  puts "#{num1} + #{num2} = #{num1 + num2}"
  puts "Continue addition? (Y/N)"
  answer = gets.chomp.downcase
  if answer == "y"
    add
  else
    get_user_choice
  end
end

def subtract
  puts "First value?"
  num1 = gets.chomp.to_i
  puts "Second value?"
  num2 = gets.chomp.to_i
  puts "#{num1} - #{num2} = #{num1 - num2}"
  puts "Continue subtraction? (Y/N)"
  answer = gets.chomp.downcase
  if answer == "y"
    subtract
  else
    get_user_choice
  end
end

def divide
  puts "First value?"
  num1 = gets.chomp.to_i
  puts "Second value?"
  num2 = gets.chomp.to_i
  puts "#{num1} / #{num2} = #{num1 / num2}"
  puts "Continue divition? (Y/N)"
  answer = gets.chomp.downcase
  if answer == "y"
    divide
  else
    get_user_choice
  end
end

def multiply
  puts "First value?"
  num1 = gets.chomp.to_i
  puts "Second value?"
  num2 = gets.chomp.to_i
  puts "#{num1} * #{num2} = #{num1 * num2}"
  puts "Continue multiplication? (Y/N)"
  answer = gets.chomp.downcase
  if answer == "y"
    multiply
  else
    get_user_choice
  end
end

def sqrt
  puts "Value to square?"
  num1 = gets.chomp.to_i
  puts "#{num1}^2 = #{num1 ** 2}"
  puts "Continue on square? (Y/N)"
  answer = gets.chomp.downcase
  if answer == "y"
    sqrt
  else
    get_user_choice
  end
end

def exp
  puts "Value to apply exponential function?"
  num1 = gets.chomp.to_i
  puts "To the..?"
  num2 = gets.chomp.to_i
  puts "#{num1}^#{num2} = #{num1 ** num2}"
  puts "Continue exponential? (Y/N)"
  answer = gets.chomp.downcase
  if answer == "y"
    exp
  else
    get_user_choice
  end
end

get_user_choice
