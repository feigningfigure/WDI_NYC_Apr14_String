def find_differing_elements(array1,array2)
  differing_elements = []
    array1.each do |item|
      array2.each do |item2|
        if item != item2
          # unless common_elements.include? item2
            differing_elements << item2
        end
      end
    end
  return differing_elements
end


