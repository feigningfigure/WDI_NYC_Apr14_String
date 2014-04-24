#FOR LOOP

# for x in (1..10)
#   puts x
# end

#WHILE LOOP
# x = 0
# while (x < 11)
#   puts x
#   x += 1
# end

# array = ["wed","coffee","lunch"]

#   for item in (0..array.length)
#     puts array[item]
#   end

#   for index in (0..array.length)
#     puts array[index]
#   end

# #includes syntactic sugar
#   for item in array
#     puts item
#   end

# #This also works:
# for item in (array)
#     puts item
#   end

array = ["wed","coffee","lunch", "macbook""apple core"]

array.each do |item|
  puts "Right now I'm thinking of #{item}"

end

array.each_with_index do |item, index|
  puts "#{item} is at position #{index} in the array."
end
# hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "66 degrees"}

# hash.each do |k,v|
#    puts "On #{k.capitalize} it was #{v} outside"
#   end

