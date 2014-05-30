class SmartCalculator
attr_accessor :operators
  def initialize()
    @operators = {}
  end

  def teach(operator, &block_to_proc)
  	# the & symbol changes the block to a proc 
  	@operators[operator] = block_to_proc 
  	# this is taking a key because operators = {} 
  end

  def run(operator, arg1, arg2)
  	a_proc = @operators[operator]
  	a_proc.call(arg1, arg2)
  	# Procs are invoked with the .call() method
  end

end

calc = SmartCalculator.new
calc.teach("add") { |num1, num2| num1 + num2 }
calc.teach("divide") { |num1, num2| num1 / num2 }
puts calc.run("add", 5, 10) #=> 15
puts calc.run("divide", 1000, 10) #=> 100
