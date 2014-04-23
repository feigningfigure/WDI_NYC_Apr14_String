def get_user_choice

  def add(num1,num2)
    puts num1 + num2
  end

  def subtract(num1,num2)
    puts num1 - num2
  end

  def divide(num1,num2)
    puts num1 / num2
  end

  def multiply(num1,num2)
    puts num1 * num2
  end

  def exponent(num1, num2)
    puts num1 ** num2
  end

  def sqrt(num1, num2)
    puts num1 * num2
  end

def doing_math(math)
  case math
    when "a"
      puts "Enter a number"
      x = gets.chomp.to_i
      puts "Enter a second"
      y = gets.chomp.to_i
      add(x, y)
    when "s"
      puts "Enter a number"
      x = gets.chomp.to_i
      puts "Enter a second"
      y = gets.chomp.to_i
      subtract(x, y)
    when "m"
      puts "Enter a number"
      x = gets.chomp.to_i
      puts "Enter a second"
      y = gets.chomp.to_i
      multiply(x, y)
    when "d"
      puts "Enter a number"
      x = gets.chomp.to_i
      puts "Enter a second"
      y = gets.chomp.to_i
      divide(x, y)
     when "e"
      puts "Enter a number"
      x = gets.chomp.to_i
      puts "Enter a second"
      y = gets.chomp.to_i
      exponent(x, y)
      when "sq"
      puts "Enter a number"
      x = gets.chomp.to_i
      puts "Enter a second"
      y = gets.chomp.to_i
      sqrt(x, y)
    else
      get_user_choice
  end
end

  puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponent, (sq)uare"
  output = gets.chomp
  doing_math(output)
  puts "Go again? Type 'quit' to exit"
  answer = gets.chomp
  if answer != "quit"
    get_user_choice
  end
end


get_user_choice
