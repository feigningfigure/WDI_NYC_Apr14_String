#for
for x in (1..10)
  puts "This is the number #{x}"
end

#while loop
x = 1
while (x < 11)
  puts x
  x += 1
end

#Array
array  = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

for x in array # (0..array.length) #will take into consideration when additional items are added to the array
  puts x # puts array[x]
end


for index in (0..array.length)
  puts array[length]
end

for item in array
  puts item
end

# The scoping of ".each" is different from "for loop" as it runs through an array

#.each

#Array.each
array  = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

array.each do |item|
  #puts item #iteration 1
  puts "Right now I am thinking of #{item}." #iteration 2
end

array.each_with_index do |item, index|
 puts "#{item} is at position #{index} in this array."
end

#Hash.each
hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "66 degrees"}
#hash[monday] ==> get 52 degrees

hash.each do |key, value|
  # puts key #iteration 1
  # puts value
  puts "On #{key.capitalize} it was #{value}" #iteration 2
end
