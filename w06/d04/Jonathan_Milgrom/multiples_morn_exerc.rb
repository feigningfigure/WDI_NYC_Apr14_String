multiples_of_three_array = []
multiples_of_five_array = []

for i in (1..1000)
	multiples_of_three_array << i if i % 3 == 0
end

for i in (1..1000)
	multiples_of_five_array << i if i % 5 == 0
end

def sum_of_array(array)
	sum = 0
	array.each do |num|
		sum += num
	end
	return sum
end

def multiples_sum(multiple)
	sum = 0
	for i in (1..1000)
		sum += i if i % multiple == 0
	end
	return sum
end