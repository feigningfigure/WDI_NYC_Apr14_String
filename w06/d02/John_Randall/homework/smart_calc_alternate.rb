class SmartCalculator
	attr_accessor :operators
	def initialize()
		@operators = {}
	end

	def teach(name, input_block)
		@operators[name] = input_block
	end

	# def teach(name, input_block)
	# 	@operators[name] = Proc.new { input_block
	# end

	def run(name, arg1, arg2)
		#add, 2, 3
		#return 5

		proc_of_the_moment = @operators[name]

		proc_of_the_moment.call(arg1, arg2)
	end
end

$calc = SmartCalculator.new()
$calc.teach("add", Proc.new {|num1, num2| num1 + num2 })
$calc.teach("divide", Proc.new { |num1, num2| num1 / num2 })
puts $calc.run("add", 5, 10) #=> 15
puts $calc.run("divide", 1000, 10) #=> 100
