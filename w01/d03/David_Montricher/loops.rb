# for loop

# for x in (1..10)
#   puts x * 2
# end

# while loop

# x  = 1
# while (x < 11)
#   puts x
#   x += 1
# end


# array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

# for x in array
#   puts x
# end

=begin
"for item in array" is syntactic sugar for
"for index in (0..array.length)"
=end

array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

array.each do |item|
  puts "Right now I'm thinking of #{item}"
end

hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degree", thursday: "66 degrees"}

hash.each do |key, value|
  puts "It was #{key.capitalize} it was #{value} outside"
end
