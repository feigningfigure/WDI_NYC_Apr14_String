# for x in (1..200)
	# if x % 2 == 0
		# print x
	# else
		# print "odd"
	# end
# ÷«end

# array = ["wednesday", "macbook", "coffee", "lunch"]

# for x in (0...3)
# 	puts array[x]
# end

#Using .each with an array

array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

array.each do  |item| 
puts "Right now I am thinking of #{item}"

hash - {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thurdsday: "66 degrees"}

hash.each do |key, value|
	puts "On #{k.capitalize} it was #{v} outside"
end

array.each_with_index do |item, index|
	puts "#{item} is at position #{index} in this array"
end