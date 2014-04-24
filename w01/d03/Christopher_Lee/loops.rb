# for x in (1..10)
#   puts x * 2
# end

# WHILE LOOP
# x = 0
# while (x < 11)
#   puts x
#   x += 1
# end


for x in (1..200)
  if x % 2 == 0
    print x
  else
    print "odd"
  end
end

# x = 0
# while (x < 200)
#   if x.even?
#     puts x
#   else
#     puts "odd"
#   end
#   x += 1
# end

# array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

# for x in (0..array.length)
#   puts array[x]
# end

# using .each with an array

# array = ["wednesday", "macbook", "coffee", "lunch", "apple core"]

# array.each do |item|
#   puts "Right now I am thinking of #{item}"
# end

# array.each_with_index do |item, index|
#   puts "#{item} is at position #{index}"
# end


# hash = {monday: "52 degrees", tuesday: "60 degrees", wednesday: "56", thursday: "66 degrees"}

# hash.each do |key,value|
#   puts value
# end

# hash.each do |key,value|
#   puts "On #{key.capitalize} it was #{value}"
# end


# def array_minus!(array1,array2)
#   array1.each do |item|
#     array2.each do |item2|
#       if item == item2
#         array1.delete(item)
#       end
#     end
#   end
#   return array1
# end

def array_minus_unique(array1,array2)
  new_solution = array1
  new_solution.each do |item|
    array2.each do |item2|
      if item == item2
        new_solution.delete(item)
      end
    end
  end
  return new_solution
end


# def my_union(array1,array2)
#   array1.each do |item|
#     array2.each do |item2|
#       if item != item2
#     end
#   end
#   return array1
# end

# janes_favorite_colors = ["green", "mauve", "red"]
# omars_favorite_colors = ["green", "ruby red", "periwinkle"]

# array_minus(janes_favorite_colors, omars_favorite_colors)

# janes_favorite_colors - omars_favorite_colors

# array_minus_unique(janes_favorite_colors, omars_favorite_colors)

