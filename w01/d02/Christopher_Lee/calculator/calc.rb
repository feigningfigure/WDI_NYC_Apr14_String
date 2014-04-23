# we need to recursively call get_user_choice
# adding more options breaks the spec
def get_user_choice
  print "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (e)xponents, (sq)uare root, (q)uit"
  puts "\n"
  choice = gets.chomp.to_s
  case choice
    when "a","add"
      get_input("+")
      get_user_choice
    when "s","subtract"
      get_input("-")
      get_user_choice
    when "m", "multiply"
      get_input("*")
      get_user_choice
    when "d", "divide"
      get_input("/")
      get_user_choice
    when "e", "exponents"
      get_input("to the")
      get_user_choice
    when "sq", "square root"
      puts "What number would you like to square root?: "
      num1 = gets.chomp.to_i
      puts "The square root of #{num1} is #{square_root(num1)}"
      get_user_choice
    when "q", "quit"
      return
    else
      puts "please enter a valid choice"
      get_user_choice
  end
end


# puts "Peform more operations on this number (Y/N)?"
# continue = gets.chomp.to_s
# if continue == "N"
#   next
# end

# def get_input(math_sign)
#   input = []
#   puts "Enter the first number: "
#   input << num1 = gets.chomp.to_i
#   puts "#{math_sign}"
#   input << num2 = gets.chomp.to_i
#   return input
# end

# this method makes get_user_choice much DRY-er by eliminating repetition for the case statement
def get_input(math_sign)
  input = []
  puts "Enter the first number: "
  input << num1 = gets.chomp.to_i
  puts "#{math_sign}"
  input << num2 = gets.chomp.to_i
  case math_sign
  when "+"
    result = add(input[0],input[1])
  when "-"
    result = subtract(input[0],input[1])
  when "*"
    result = multiply(input[0],input[1])
  when "/"
    result = divide(input[0],input[1])
  when "to the"
    result = exponent(input[0],input[1])
  end
    puts "#{input[0]} #{math_sign} #{input[1]} = #{result}"
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
