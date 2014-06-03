Class Game

main_array = [[1, 0, 1],
              [0, 1, 0]
              [1, 1, 1]]

def array_method
  y = 0
  x = index_value
  for y in main_array is index value
    main_array[y] index_value [x-1] = sum
    main_array[y] index_value [x+1] = sum
    main_array[y-1] index_value [x-1] = sum
    main_array[y-1] index_value [x] = sum
    main_array[y-1] index_value [x+1] = sum
    main_array[y+1] index_value [x-1] = sum
    main_array[y+1] index_value [x] = sum
    main_array[y+1] index_value [x+1] = sum

    if x = 0 && sum = 3
      x = 1
    else
      if sum < 2
        x = 0
      elsif sum = 2
        x = 1
      elsif sum = 3
        x = 1
      else sum > 3
        x = 0
      end
    end
  end
end
