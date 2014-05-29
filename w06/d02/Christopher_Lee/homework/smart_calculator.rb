class SmartCalculator
  attr_accessor :operators
  def initialize
    @operators = {}
  end

  def teach(name, &block)
    @operators[name] = block
  end

  def run(name, arg1, arg2)
    current_proc = @operators[name]
    current_proc.call(arg1, arg2)
  end

end


@calc = SmartCalculator.new
@calc.teach("add") { |num1, num2| num1 + num2 }
@calc.teach("divide") { |num1, num2| num1 / num2 }
puts "10 + 5 = #{@calc.run("add", 5, 10)}" #=> 15
puts "1000 / 10 = #{@calc.run("divide", 1000, 10)}" #=> 100



# you could also do @calc.teach("add") Proc.new { |num1, num2| num1 + num2 }
# and then def teach(name, input) NO AMPERSAND
