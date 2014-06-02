require 'benchmark'
given_number = 10
tested_numbers = Array(0..1000)
target_array = []
mult_1 = 3
mult_2 = 5

	
	
	tested_numbers.each do |number| 
		if number % mult_1 == 0 || number % mult_2 == 0
				target_array << number
		end
	end



# Benchmark.TESTS = 10_000
# Benchmark.bmbm do |results|

# 	results = tested_numbers.each do |number| 
# 		if number % mult_1 == 0 || number % mult_2 == 0
# 				target_array << number
# 		end

# end


  
# n = 50000
# Benchmark.bm(7) do |x|
#   x.report("for:")   { for i in 1..n; a = "1"; end }
#   x.report("times:") { n.times do   ; a = "1"; end }
#   x.report("upto:")  { 1.upto(n) do ; a = "1"; end }
# end

puts Benchmark.measure {

tested_numbers.each do |number| 
		if number % mult_1 == 0 || number % mult_2 == 0
				target_array << number
		end
	end


}





target_array

sum = target_array.inject{|sum,x| sum + x }

# p 3 % 3
