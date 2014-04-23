def get_user_choice(num1, operation, num2)
  num1 == num1
  num2 == num2

  if operation == "a"
        add(num1, num2)
      elsif operation == "s"
        subtract(num1, num2)
      elsif operation == "m"
        multiply(num1, num2)
      else operation == "d"
        divide(num1, num2)
  end
end

def add(num1,num2)
  puts "#{num1 + num2}"
end

def subtract(num1,num2)
  puts "#{num1 - num2}"
end

def divide(num1,num2)
  puts "#{num1 / num2}"
end

def multiply(num1,num2)
  puts "#{num1 * num2}"
end

puts "Enter number 1"
num1 = gets.chomp.to_i
puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (q)uit"
operation = gets.chomp
puts "Enter number 2"
num2 = gets.chomp.to_i

get_user_choice(num1, operation, num2)
