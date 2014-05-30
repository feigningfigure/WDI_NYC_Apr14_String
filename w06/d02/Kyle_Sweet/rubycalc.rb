class SmartCalculator

  def initialize()
    @operators = {}
  end

  def teach(method)
    add = num1 + num2
    divide = num1/num2
  end

  def run(method, num1, num2)
  end

end

calc = SmartCalculator.new 

calc.teach("add") { |num1, num2| num1 + num2 } 
calc.teach("divide") { |num1, num2| num1 / num2 } 


puts calc.run("add", 5, 10) 
puts calc.run("divide", 1000, 10)
