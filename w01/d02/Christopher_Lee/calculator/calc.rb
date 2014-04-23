# we need to recursively call get_user_choice
# adding more options breaks the spec
def get_user_choice
  print "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponents, (sq)uare root, (q)uit"
  puts "\n"
  choice = gets.chomp.to_s
  case choice
    when "a","add"
      two_numbers = get_input("+")
      puts "#{two_numbers[0]} + #{two_numbers[1]} = #{add(two_numbers[0],two_numbers[1])}"
      get_user_choice
    when "s","subtract"
      two_numbers = get_input("-")
       puts "#{two_numbers[0]} - #{two_numbers[1]} = #{subtract(two_numbers[0],two_numbers[1])}"
      get_user_choice
    when "m", "multiply"
      two_numbers = get_input("*")
      puts "#{two_numbers[0]} * #{two_numbers[1]} = #{multiply(two_numbers[0],two_numbers[1])}"
      get_user_choice
    when "d", "divide"
      two_numbers = get_input("/")
      puts "#{two_numbers[0]} / #{two_numbers[1]} = #{divide(two_numbers[0],two_numbers[1])}"
      get_user_choice
    when "e", "exponents"
      two_numbers = get_input("to the")
      puts "#{two_numbers[0]} to the #{two_numbers[1]} = #{exponent(two_numbers[0],two_numbers[1])}"
      get_user_choice
    when "sq", "square root"
      puts "What number would you like to square root?: "
      num1 = gets.chomp.to_i
      puts "The square root of #{num1} is #{square_root(num1)}"
    when "q", "quit"
      return
    else
      puts "please enter a valid choice"
      get_user_choice
  end
end

def get_input(math_sign)
  input = []
  puts "Enter the first number: "
  input << num1 = gets.chomp.to_i
  puts "#{math_sign}"
  input << num2 = gets.chomp.to_i
  return input
end

def add(num1,num2)
  num1+num2
end

def subtract(num1,num2)
  num1-num2
end

def divide(num1,num2)
  if num2 == 0
    return "Infinity"
  else
  num1.to_f / num2
  end
end

def multiply(num1,num2)
  num1 * num2
end

def exponent(num1,num2)
  num1 ** num2
end

def square_root(num1)
  Math.sqrt(num1)
end


get_user_choice
