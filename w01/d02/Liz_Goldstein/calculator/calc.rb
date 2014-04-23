# THERE IS A MUCH BETTER WAY TO DO THIS! I was very confused by the predefined form and the spec check
#So I ran out of time
#If I had more time, I'd add a class check for the number (integer) input
#Also a MUCH BETTER WAY TO DO THE MENU and take more inputs (again, confused by the preset)
#And there must be a way to make this DRY since theres too much repetition but I can't figure it out now sorry

def get_user_choice

  def add(num1,num2)
    puts num1 + num2
  end

  def subtract(num1,num2)
    puts num1 - num2
  end

  def divide(num1,num2)
    puts num1.to_f / num2.to_f
  end

  def multiply(num1,num2)
    puts num1 * num2
  end

  def exponent(num1, num2)
    puts num1 ** num2
  end

  def sqrt(num1)
    puts Math.sqrt(num1)
  end

def doing_math(math)
  case math
    when "a"
      puts "Enter a number:"
      x = gets.chomp.to_i
      puts "Enter a second number to add to it:"
      y = gets.chomp.to_i
      add(x, y)
    when "s"
      puts "Enter a number:"
      x = gets.chomp.to_i
      puts "Enter a second number to subtract to it:"
      y = gets.chomp.to_i
      subtract(x, y)
    when "m"
      puts "Enter a number:"
      x = gets.chomp.to_i
      puts "Enter a second to multiply by:"
      y = gets.chomp.to_i
      multiply(x, y)
    when "d"
      puts "Enter a number:"
      x = gets.chomp.to_f
      puts "Enter a second to divide by:"
      y = gets.chomp.to_f
      divide(x, y)
    when "e"
      puts "Enter a number:"
      x = gets.chomp.to_i
      puts "Enter a second a second number for the exponent factor:"
      y = gets.chomp.to_i
      exponent(x, y)
    when "sq"
      puts "Enter a number to find square root:"
      x = gets.chomp.to_i
      sqrt(x)
    else
      "Please select a function by key from the function menu:"
      get_user_choice
  end
end

  puts "Enter your choice of math function: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (sq)uare, (e)xponent"
  output = gets.chomp
  doing_math(output)
  puts "Go again? Type 'quit' to exit"
  answer = gets.chomp
  if answer != "quit"
    get_user_choice
  end
end
get_user_choice
