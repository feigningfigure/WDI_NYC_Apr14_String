# numbers_to_check = (1..200).to_a

# numbers_to_check.each {|x| 
# 	if x %2 == 0
# 		puts x
# 	else
# 		puts "odd"
# 	end
# }



for x in (1..200)
	if x %2 == 0
		puts x
	else
		puts "odd"
	end
end