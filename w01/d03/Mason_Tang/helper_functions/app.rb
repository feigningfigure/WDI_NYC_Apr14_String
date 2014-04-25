# def my_app
#     x = 10
#     ["green","red","blue"].each do |color|

#     end
#   end
#   my_app

# def sugary
#   ["green","red","blue"].each { |c| puts c }

# end

# matrix = [
#           ["1a", "1b", "1c"],
#           ["2a", "2b", "2c"],
#           ["3a", "3b", "3c"]
#         ]

# def print_matrix
#   $matrix.each do |rows|
#     rows.each do |col|
#       puts col
#     end
#   end
# end

# $bedroom = {
#     :dresser => [
#       "sock",
#       "shirt"
#     ]
# }

array1 = ["red", "blue", "green"]
array2 = ["yellow", "red", "gray"]


# def find_common_elements(array1,array2)
#   common_elements = []
#   array1.each do |item|
#     array2.each do |item2|
#       if item == item2
#         unless common_elements.include? item2
#           common_elements << item2
#         end
#       end
#     end
#   end
#   return common_elements
# end

def merge_elements(array1, array2)
  merge_elements = []
  array1.each do |item|
    array2.each do |item2|


          merge_elements << item
          merge_elements << item2
        end
      end


  return merge_elements
end

merge_elements(array1, array2)
