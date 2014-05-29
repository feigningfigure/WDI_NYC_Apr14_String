users = {
      "Max" => {
        :github => "mcantor",
        :favorite_numbers => [14, 38, 501],
      },
      "Neel" => {
        :github => "darthneel",
        :favorite_numbers => [53, 38, 7],
      },
      "Keri" => {
        :github => "ktoksu",
        :favorite_numbers => [1, 83, 14],
      }
    }



users['Neel'][:favorite_numbers].push(64)

users["Mason"] = {:github => "masewillis", :favorite_numbers => [1, 2, 3]}

users["Neel"][:favorite_numbers].min

users["Max"][:favorite_numbers].select {|num| num.even?}

a = users["Max"][:favorite_numbers]
b = users["Neel"][:favorite_numbers]
b = users["Keri"][:favorite_numbers]

a.zip(b,c).flatten.uniq.sort
