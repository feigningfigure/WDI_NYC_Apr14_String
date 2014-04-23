# FOR LOOP

for x in (1..10)
	puts x * 2
end

# WHILE LOOP
x = 1
while (x < 11)
	puts x
	x += 1
end

# For loops with arrays
array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

for index in (0..array.length)
	puts array[index]
end

for item in array
	puts item
end