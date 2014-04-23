# FOR LOOP

# for x in (1...10)
# 	puts x * 2
# end

#x is a variable I have set
#(1..10) is 1 to 10 inclusive of the final number 10
#(1...10) in 1 to 9 because it excludes the final number 10
#loops changes the context of the x variable


# WHILE LOOP
# x = 1
# while (x < 11)
# 	puts x
# 	x += 1
# end


# array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

# for index in (0..array.length)
# 	puts array[index]
# end

#or

# for item in array
# 	puts item
# end




#using .each with an array = .each means call method each
array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

array.each do |item|
	puts "right now I am thinking of #{item}"
end

array.each_with_index do |item, index|
	puts "#{item} is at position #{index} in this array"
end
#position matters..what you call it doesn't. if |item, index| was swapped to |index, item|, then ex "0 is at position wednesday in this array" would happen.

hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "66 degrees"}

hash.each do |key, value|
	puts key
	puts value
end

hash.each do |k, v|
	puts "On #{k.capitalize} it was #{v} outside"
end

#you can call methods and operations in string concatenation