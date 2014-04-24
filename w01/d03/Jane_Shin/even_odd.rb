# for x in (1..100)
# 	if x % 2 == 0
# 		puts x
# 	else
# 		puts "odd"
# 	end
# end

array = ["wednesday", "macbook", "coffee", "lunch"]

# for x in (0..array.length)
# 	puts array[x]
# end

array.each_with_index do |item, index|
	puts "#{item} is at position #{index} in this array"
end

# hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "49 degrees"}
# #to pull something out of a hash you need to know the key name
# hash.each do |k, v|
# 	puts "On #{k.capitalize} it was #{v} outside."
# end