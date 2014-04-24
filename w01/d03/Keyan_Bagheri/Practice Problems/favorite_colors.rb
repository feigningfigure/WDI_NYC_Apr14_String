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

def array_plus(array1,array2)
  array3 = array1 + array2
  array3 = array3.flatten.uniq
  return array3
end

def array_minus(array1,array2)
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

