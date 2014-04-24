# for x in (1...10)
# 	puts x * 2
# end

array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

for index in (0..array.length)
	puts array[index]
end

for x in array
	puts x
end

#using .each with an array

array.each do |x|
	puts "right now I am thinking of #{x}"
end

hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "66 degrees"}

hash.each do |key, value|
	puts "On #{key.capitalize} it was #{value} outside"
end

array.each_with_index do |index, number|
	puts "#{index} is at position #{number} in this array"
end
