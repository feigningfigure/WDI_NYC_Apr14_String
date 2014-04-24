# for loop

# for x in (1..10)
 # puts x * 2
# end


# while loop

#x=1
#while (x < 11)
 # puts x
  #x += 1
#end

#array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

 # for index in (0..array.length)
  # puts array [index]
  #end

  #for item in array
  # puts item
  #end

# using .each with an array

array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

#   array.each do |item| #array.each - this is a method
#   puts "Right now I am thinking of #{item}"
# end

array.each_with_index do |item, index|
puts "#{item.capitalize} is at position #{index} in this array"
end

# hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56 degrees", thursday: "66 degrees"}
#   hash.each do |key, value|
#     puts "On #{key.capitalize} it was #{value}!"

#   end (end is an example of an anonymous function)

# anonymous functions

#["green" , "red" , "blue"].each do |color| #any code can go in here

def combine_elements(array1,array2)
  combine_elements = []
  array1.each do |item|
    array2.each do |item2|
      item<< item2
        end
      end
    end
  end
  return common_elements
end
