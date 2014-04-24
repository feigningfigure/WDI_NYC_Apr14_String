def find_unique_elements(array1,array2)
  minus_elements = []
  array1.each do |item|
    array2.each do |item2|
      if item != item2
          minus_elements<<(item2)
      end
    end
  end
  return minus_elements
end
