def get_user_choice()

puts "What operation would you like to perform: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponent, sq(r)t? "
puts "You can type (q)uit to exit."
user_input = gets.chomp

if user_input != "q"

  if user_input == "r"
    puts "Enter a number:"
    sqrt_num = gets.chomp.to_i
  else
    puts "Enter the first number:"
    num1 = gets.chomp.to_i
    puts "Enter the second number:"
    num2 = gets.chomp.to_i
  end

  def add(num1, num2)
   add = num1 + num2
   puts "#{num1} + #{num2} is #{add}"
  end

  def subtract(num1, num2)
    subtract = num1 - num2
    puts "#{num1} - #{num2} is #{subtract}"
  end

  def divide(num1, num2)
    if num2 == 0
      puts "'Infinity'"
    else
      divide = num1 / num2
      puts "#{num1} / #{num2} is #{divide}"
    end
  end

  def multiply(num1, num2)
    multiply = num1 * num2
    puts "#{num1} * #{num2} is #{multiply}"
  end

  def exponent(num1, num2)
    exponent = num1 ** num2
    puts "#{num1} ^ #{num2} is #{exponent}"
  end

   def sqrt(sqrt_num)
    if sqrt_num < 0
    puts "Please enter a number more than 0."
    else
    sqrt = Math.sqrt(sqrt_num)
    puts "The squareroot of #{sqrt}"
    end
    end

  if user_input == "a"
    # call the addition function
    add(num1,num2)
  elsif user_input == "s"
    # call the subtraction function
    subtract(num1, num2)
  elsif user_input == "m"
    # call the multiply function
    multiply(num1,num2)
  elsif user_input == "d"
    # call the divide function
    divide(num1, num2)
  elsif user_input == "e"
    #call exponent function
    exponent(num1, num2)
  elsif user_input == "r"
    #call squareroot function
    sqrt(sqrt_num)
  else
    puts "Please enter a valid choice from the list."
  end

  return get_user_choice()

else #quit option (if else)
end #quit option end

end

get_user_choice()
