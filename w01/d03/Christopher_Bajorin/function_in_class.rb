array1 = ["a","b","c","d"]
array2 = ["c","d","e","f"]


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

array1 = ["a","b","c","d"]
array2 = ["c","d","e","f"]

def subtract_common_elements(array1,array2)
  unique_array = array1 + array2
  array1.each do |item|
    unique_array.each do |item2|
      if item == item2
        unique_array.delete(item2)
      end
    end
  end
  print unique_array
end

subtract_common_elements(array1,array2)
