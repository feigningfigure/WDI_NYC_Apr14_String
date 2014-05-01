def main_loop

def ask
	choice = get_user_choice
puts "You chose choice: #{{choice}}"
case choice
when "a"
	#add(num1, num2)
puts "Addition"
num_hash = gets_nums
puts add(num_hash[:num1],num_hash[:num2])
when "s"
puts "Subraction"
num_hash = gets_nums
puts subtract(num_hash[:num1],num_hash[:num2])
when "m"
puts "Multiplication"
num_hash = gets_nums
puts multiplication(num_hash[:num1],num_hash[:num2])
when "d"
puts "Division"
num_hash = gets_nums
puts division(num_hash[:num1],num_hash[:num2])
end
puts "do you want to try again"
answer = gets.chomp
end

def get_user_choice
print "enter your choice, (a)dd, (s)ubtract, (m)ultiply, (d)ivide"
input = gets.chomp
return input
end

def get_nums
	puts 'Enter Number1:'
	num1 = gets.chomp.to_i
	puts 'Enter Number 2:'
	num2 = gets.chomp.to_i
	return {
		:num1 => num1
		:num2 => num2
	}
end

def add(num1,num2)
num1+num2
end

def subtract(num1,num2)
num1-num2
end

def divide(num1,num2)
return 'Infinity' if num2 == 0
end

def multiply(num1,num2)
num1*num2

end

ask
