def get_user_choice(choice, num1, num2)

  if choice == "a"
    answer = num1 + num2
    "#{answer}"
  elsif choice == "s"
    answer = num1 - num2
    #returns answer
  elsif choice == "multiply"
    answer = num1 * num2
    returns answer
  elsif choice == "d"
    answer = num1 % num2
    returns answer
  else choice == "quit"
    exit
end
=begin

rescue Exception => e

end
def add(num1,num2)

  answer = num1 + num2
        puts "#{answer}"
end

def subtract(num1,num2)

end

def divide(num1,num2)

end

def multiply(num1,num2)

=end
end

puts "enter your choice: (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (quit)"
  choice = gets.chomp
puts "Please enter the first number in your operation"
    num1 = gets.chomp
    puts "Please enter the second number in your operation"
    num2 = gets.chomp
get_user_choice(choice, num1, num2)
