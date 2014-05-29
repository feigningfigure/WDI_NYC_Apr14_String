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



# "mcantor"
users['Max'][:github]


# 38
users['Neel'][:favorite_numbers][1]


# Add the number 64 to Neel's favorite numbers.
users['Neel'][:favorite_numbers].push(64)


# Add yourself to the users hash.
users["Jane"] = {:github => "janeplural", :favorite_numbers => [1,2,3]}


# Return the smallest of Neel's favorite numbers.
users["Neel"][:favorite_numbers].min


# Return an array of Max's favorite numbers that are also even.
users["Max"][:favorite_numbers].select {|num| num.even?}


# Return an array containing all users' favorite numbers, sorted, and excluding duplicates.
a = users['Max'][:favorite_numbers]
b = users['Neel'][:favorite_numbers]
c = users['Keri'][:favorite_numbers]

a.zip(b,c).flatten.uniq

