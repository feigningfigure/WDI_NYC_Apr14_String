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

def merge_two_arrays(array1,array2)