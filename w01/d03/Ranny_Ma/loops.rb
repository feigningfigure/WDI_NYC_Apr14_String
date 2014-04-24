# for x in (1..10)
#   puts x * 2
# end
# x = 1
# while (x < 11)
#   puts x
#   x += 1
# end
# puts x
# Using .each with an array
# array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

# for x in (0..array.length)
#   puts array[x]
# end

array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

array.each do |item| #each element
  puts "Right now I am thinking of #{item}."#thing we want to do for each item
end

array.each_with_index do |item, index|
  puts "#{item} is at position #{index} in this array"
end

# hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "66 degrees"}

# hash.each do |key, value|
#   puts value
# end
