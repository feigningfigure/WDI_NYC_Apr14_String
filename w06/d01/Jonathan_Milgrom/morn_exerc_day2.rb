users = {
      "Max" => {
        :github => "mcantor",
        :favorite_numbers => [14, 38, 501]
      },
      "Neel" => {
        :github => "darthneel",
        :favorite_numbers => [53, 38, 7]
      },
      "Keri" => {
        :github => "ktoksu",
        :favorite_numbers => [1, 83, 14]
      }
    }

    users["Neel"][:favorite_numbers] << 64

    users["Neel"][:favorite_numbers].sort[0]

    even_array = []
    users["Max"][:favorite_numbers].each do |number|
      even_array << number if number % 2 == 0 
    end

    sorted_combined_array = []
    users.each do |k, v|
      v.each do |key, value|
        if key == :favorite_numbers
          value.each do |number|
            sorted_combined_array << number
          end
        end
      end
    end
    sorted_combined_array.sort.uniq

