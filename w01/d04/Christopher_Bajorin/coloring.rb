def color_array

  require 'rainbow/ext/string'

  array = ["blue","green","red"]
  array2 = []

  array.each do |item|
    array2 << item.to_sym
  end

  # x = 0
  # for x in x < 3
  #   puts array[x].color(array2[x])
  #   x += 1
  # end

  print array
  print array2
end
