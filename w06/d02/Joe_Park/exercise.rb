colors = ["mauve", "chartreuse", "seafoam"]

# colors.map

# colors.each do |color|
#   puts color
# end


# [1, 2, 3].each do |item|
#     puts("Iterating over #{item}...")
# end


# The .each method is being called on a given array with 3 integers 1, 2, and 3.  The method is iterating over the array and calling each integer a temporary variable called |item| within the do block.  Each |item| is then string interpolated into a string that says "Iterating over #{item}..." which is printed out each on its own line through the method puts which has a side effect of printing the interpolated string, but a return value of nil.

def my_each(array)
  for pallet in array
    yield(pallet)
  end
end

# yield is the same as block.call.  Yield is implicit while block.call is explicit

my_each(colors) { |color| puts "I love #{color.upcase}!" }

