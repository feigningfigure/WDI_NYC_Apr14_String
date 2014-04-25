# FOR LOOP

# for x in (1..10)
#   puts "This is the number #{x}"
# end

# WHILE LOOP
=begin
x = 1
while (x < 11)
  puts x
  x += 1
end
=end

# array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

# for index in (0..array.length)
#   puts array [index]
# end

# for item in array
#   puts item
# end



array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

# array.each do |item|
#   puts "Right now I am thinking of #{item}"
# end

array.each_with_index do |item, index|
  puts "#{item} is at position #{index} in this array"
end

# hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "66 degrees"}

# hash.each do |k, v|
#   puts "On #{k.capitalize} it was #{v} outside"

# end

