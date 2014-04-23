class Calculator
def get_user_choice(choice)
end

def add(num_1, num_2)
	puts num_1+num_2
end

def subtract(num1,num2)
	puts num_1-num_2
end

def divide(num1,num2)

end

def multiply(num1,num2)

end
end

puts "Would you like to add, subtract, divide or multiply?"
choice = gets.chomp

puts "enter your first value"
num_1 = gets.chomp.to_i

puts "enter your second value"
num_2 = gets.chomp.to_i

add(num_1, num_2)
