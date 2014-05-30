class SmartCalculator

  attr_accessor :operators
  
  def initialize()
    @operators = {}
  end

  def teach(operator, &block)
  	@operators[operator] = block
  end

  def run(operator, num1, num2)
  	@operators[operator].call(num1, num2)
  end

end
# Implement SmartCalculator such that this code:

calc = SmartCalculator.new
calc.teach("add") { |num1, num2| num1 + num2 }
calc.teach("divide") { |num1, num2| num1 / num2 }
puts calc.run("add", 5, 10) #=> 15
puts calc.run("divide", 1000, 10) #=> 100