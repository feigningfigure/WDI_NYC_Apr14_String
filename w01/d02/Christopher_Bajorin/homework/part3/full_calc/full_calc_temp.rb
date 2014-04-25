#just push each entry into a single array, skip the numbers

def intro
  puts "Here is a list of operations: \n Addition(+) \n Subtraction(-) \n Multiplication(*) \n Division(%) \n Exponent(^) \n Square root(sqrt) \n
  If you would like to exit, type 'quit'"
  if
  calc_inputs("empty")
end

def calc_inputs(prior_array) #needs a default value to start, will push later arrays back in
  user_input = gets.chomp.to_s
  if prior_array == "empty"
    prior_array = []
    prior_array.push(user_input)
    check_for_more_inputs(prior_array)
  elsif user_input == "="
    formula_calculations(prior_array)
  else
    prior_array.push(user_input)
    check_for_more_inputs(prior_array)
  end
end


def check_for_more_inputs(prior_input)
  calc_inputs(prior_input)
end

def formula_calculations(formula_array)
  # print formula_array
end

intro
