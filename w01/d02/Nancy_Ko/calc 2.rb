def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def multiply(a, b)
  return a * b
end

def divide(a, b)
  return a / b
end

def calculate(x, y)
  puts add(x, y)
  puts subtract(x,y)
  puts multiply(x, y)
  puts divide(x, y)
end

def prompt_numbers
  puts "Give me a number"
  a = gets.chomp.to_i
  puts "Give me another number"
  b = gets.chomp.to_i
  return a, b
  prompt_numbers 
end

def prompt_function
  puts "Add, subtract, multiply or divide?"
  return gets.chomp
end

def prompt
  function = prompt_function
  a, b = prompt_numbers
  return a, b, function
end

a, b, calculator = prompt

case calculator
when "add"
   puts add(a,b)
when "subtract"
   puts subtract(a,b)
when "multiply"
   puts multiply(a, b)
when "divide"
   puts divide(a, b)

end