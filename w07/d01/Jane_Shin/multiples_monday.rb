def multiples_monday(number)
	sum = 0
	i = 0
	while (i < number) do
		if (i%3 == 0 || i%5 == 0)
			sum += i
		end
		i += 1
	end
	puts sum
end

multiples_monday(1000)


# #====== keri's solution

# sum = 0

# (1...1000).each do |x|
# 	if (x%3 == 0 || x%5 == 0)
# 		sum += x
# 	end
# end

# puts sum
