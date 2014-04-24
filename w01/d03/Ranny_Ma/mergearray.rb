array1 = [1,2,3]
array2 = [1,2,3,4,5]

def merge_array(array1, array2)
  merge_array = []
  array1.each do |item|
    array2.each do |item2|
      if item == item2
       # unless merge_array.include? item2
        merge_array << item2
      end
    end
  end
p merge_array
end

merge_array(array1,array2)
