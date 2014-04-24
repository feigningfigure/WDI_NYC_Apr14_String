def merge_elements(array1,array2)
  merge_elements = []
  array1.each do |item|
    array2.each do |item2|
      unless item == item2
          merge_elements << item2
        end
      end
    end
  end
  return merge_elements
end
