## Exercise 5 - SmartCalculator

# Let's write a `SmartCalculator` class that can be taught new operators. Starter code:

# ```ruby
class SmartCalculator

  def initialize()
    @operators = {}
  end

  
  def teach(operation, &block)
    @operators[operation] = block
  end


  def run(operation, num1, num2)
    @operators[operation].call(num1, num2)
  end



end
# ```

# Implement `SmartCalculator` such that this code:

# ```ruby
calc = SmartCalculator.new
calc.teach("add") { |num1, num2| num1 + num2 }
calc.teach("divide") { |num1, num2| num1 / num2 }
puts calc.run("add", 5, 10) #=> 15
puts calc.run("divide", 1000, 10) #=> 100
# ```

# Results in this output:

# ```
# 15
# 100
# ```
