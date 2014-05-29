# ## Exercise 5 - SmartCalculator

# Let's write a `SmartCalculator` class that can be taught new operators. Starter code:

# ```ruby
# class SmartCalculator

#   def initialize()
#     @operators = {}
#   end

# end
# ```

# Implement `SmartCalculator` such that this code:

# ```ruby
# calc = SmartCalculator.new
# calc.teach("add") { |num1, num2| num1 + num2 }
# calc.teach("divide") { |num1, num2| num1 / num2 }
# puts calc.run("add", 5, 10) #=> 15
# puts calc.run("divide", 1000, 10) #=> 100
# ```

# Results in this output:

# ```
# 15
# 100
# ```

class SmartCalculator
	attr_accessor :operators
	def initialize()
		@operators = {}
	end

	def teach(name_key, &input_block_converted_to_proc_by_amprasand)
		@operators[name_key] = input_block_converted_to_proc_by_amprasand
	end

	def run(name_key, arg1, arg2)
		#input - #add, 2, 3
		#output - # 5
		proc_of_the_moment = @operators[name_key]
		proc_of_the_moment.call(arg1, arg2)
	end
end

$calc = SmartCalculator.new()
$calc.teach("add") { |num1, num2| num1 + num2 }
$calc.teach("subtract") { |num1, num2| num1 - num2 }
$calc.teach("multiply") { |num1, num2| num1 * num2 }
$calc.teach("divide") { |num1, num2| num1 / num2 }
puts $calc.run("add", 5, 10) #=> 15
puts $calc.run("divide", 1000, 10) #=> 100
