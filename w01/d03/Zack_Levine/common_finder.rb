def find_common(array1,array2)
    array1.each do |item|
        array2.each do |item2|
            if item == item2
              unless common_elements.include? item2
                common_elements << item2
          end
      return common_elements
  end
end

punks = [metal, leather, tatoos]
hippies = [beards, birkenstocks, leather]
ravers = [glowsticks, candy, molly]

find_common(punks, ravers)
