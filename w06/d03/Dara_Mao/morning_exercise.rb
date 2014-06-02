class SmartCalculator

  def initialize()
    @operators = {}
  end

  def teach(argument, &block)
    @operators[argument] = block
  end

  def run(argument, num1, num2)
   @operators[argument].call(num1,num2)
  end

