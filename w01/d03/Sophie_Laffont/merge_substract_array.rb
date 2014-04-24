#SUBSTRACT

def array_substract(array1,array2)
array1.each do |item|
array2.each do |item2|
if item == item2
array.delete(item)
end
end
end
return array
end


# MERGED
def array_merged(array1,array2)
array3 = array1 + array2
array3 = array3.flatten.uniq
end