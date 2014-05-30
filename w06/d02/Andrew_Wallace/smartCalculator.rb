class SmartCalculator
  attr_accessor :operators

  def initialize()
    @operators = {}
  end

end


calc = SmartCalculator.new
  calc.teach("add") { |num1, num2| num1 + num2 }
  calc.teach("divide") { |num1, num2| num1 / num2 }
  puts calc.run("add", 5, 10)
