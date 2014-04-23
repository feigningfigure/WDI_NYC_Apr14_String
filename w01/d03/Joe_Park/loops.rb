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


array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

for index in (0..array.length)
	puts array[index]
end

#or

for item in array
	puts item
end