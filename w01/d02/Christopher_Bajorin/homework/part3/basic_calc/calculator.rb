# calculator prompting user for functions

=begin

Step 1: puts operations menu
Step 2: input and gets
Step 3: input 2 numbers
Step 4: concatenate inputs and run math
Step 5: output and loop


=end


def turn_calculator_on # starting method. Starts the menu.
  puts "Here is a list of operations. input the symbol: \n Addition(+) \n Subtraction(-) \n Multiplication(*) \n Division(%) \n
  If you would like to exit, type 'quit'"
  operator_user_input = gets.chomp.to_s

  if operator_user_input == "quit" || operator_user_input == "q"
    puts "Thanks for using this!"
  else
  puts "What is your first number?" #later, multiple numbers, create empty array and use .push
  first_number_user_input = gets.chomp.to_i

  puts "What is your second number?"
  second_number_user_input = gets.chomp.to_i

  number_array = [first_number_user_input, second_number_user_input] # array of the numbers being used

  calculate( operator_user_input, number_array )
  end
end

def calculate( operator, number_array )
  if operator == "+"
    result =  number_array[0] + number_array[1]
  elsif operator == "-"
    result = number_array[0] - number_array[1]
  elsif operator == "*"
    result = number_array[0] * number_array[1]
  elsif operator == "%"
    result = number_array[0] + number_array[1]
  end
  puts "the result of #{number_array[0]} #{operator} #{number_array[1]} is: #{result}\n \n Let's go again! \n \n"
  turn_calculator_on
end

turn_calculator_on
