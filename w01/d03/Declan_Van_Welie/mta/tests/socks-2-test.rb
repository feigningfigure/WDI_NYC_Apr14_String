def difference_between(num1,num2)
  num1-num2
end

def find_socks_in_array(array)
  num_socks = 0
  array.each do |item|
    if item == "socks"
      num_socks += 1
    end
  end
  puts "Found #{num_socks} socks!"
  return num_socks
end

def inspect_thing_in_bedroom(thing)
  if thing.class == Array
    find_socks_in_array(thing)
  elsif thing.class == Hash
    thing.each do |key, value|
      inspect_thing_in_bedroom(value)
    end
  end
end

def find_common_elements(array1,array2)
  common_elements = []
  array1.each do |item|
    array2.each do |item2|
      if item == item2
        unless common_elements.include? item2
          common_elements << item2
        end
      end
    end
  end
  return common_elements
end

# def array_minus(array1,array2)
#   # chris lee's solution
#   array1.each do |item|
#     array2.each do |item2|
#       if item == item2
#         array1.delete(item)
#       end
#     end
#   end
#   # returns original array but now changed
#   return array1
# end


# def array_minus(array1,array2)
#   # declan's solution
#   differing_elements = []
#     array1.each do |item|
#       array2.each do |item2|
#         if item != item2
#           # unless common_elements.include? item2
#             differing_elements << item2
#             end
#       end
#     end
#   end
#   return differing_elements
# end

def array_minus(array1,array2)
  # keyan's solution -- does not change array
  array = array1
  array.each do |item|
    array2.each do |item2|
      if item == item2
        array.delete(item)
      end
    end
  end
  return array
end

def array_plus(array1,array2)
  array3 = array1 + array2
  array3 = array3.flatten.uniq
end
