class SmartCalculator

  def initialize()
    @operators = {}
  end

  def teach(&block)
    yield if block_given?
  end

  def run(operation,num1,num2)
    yield if block_given?
  end

end

calc = SmartCalculator.new
calc.teach("add") { |num1, num2| num1 + num2 }
calc.teach("divide") { |num1, num2| num1 / num2 }
puts calc.run("add", 5, 10) #=> 15
puts calc.run("divide", 1000, 10) #=> 100


# Results in this output:

# 15
# 100