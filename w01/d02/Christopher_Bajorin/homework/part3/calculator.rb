# calculator prompting user for functions

=begin

Step 1: puts operations menu
Step 2: input and gets
Step 3: input 2 numbers
Step 4: concatenate inputs and run math
Step 5: output and loop


=end


def calculator # starting method. Starts the menu.
  puts "Here is a list of operations. input the symbol:\n
  Addition(+) \n Subtraction(-) \n Multiplication(*) \n Division(%) \n
  If you would like to exit, type 'quit'"
  math_operation = gets.chomp.to_s
  operation(math_operation)
  # puts math_operation
end

def operation(operator_input)
  puts operator_input
end

calculator
