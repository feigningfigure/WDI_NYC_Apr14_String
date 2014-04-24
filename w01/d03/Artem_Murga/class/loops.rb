array = [1, 3, 4]

for x in (0..array.size) #or array
	puts array[x]
end

# or more simple 
for item in array
	puts item
end

# .each theme

array.each { |e| puts "Right now I'm thinking of #{e}" }

array.each_with_index { |item, index| puts "#{index, item}" }

#hash

hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "66 degrees"}
hash.each { |key, value| puts "sdf #{key}" }








