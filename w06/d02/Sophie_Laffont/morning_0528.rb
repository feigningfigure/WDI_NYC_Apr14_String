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

add 64 to Neel's favorite favorite numbers

users['Neel'][:favorite_numbers].push(64)

add yourself to the users hash
users["sophie"] = {:github => "sophie", :favorite_number =<[4,5,6]}

return the smallest of Neel's favorite numbers
users["Neel"][:favorite_numbers].min


return an array of max's favorite numbers that are also even
users["Max"][:favorite_numbers].select{|num| num.even?}

return an array containing all users favorite numbers, sorted, and excluding duplicates
a=users["Max"][:favorite_numbers]
b=users["Neel"][:favorite_numbers]
c=users["Keri"][:favorite_numbers]

#zip - combines one array with the 3 nested array
# flatten it to combine into one array
# then get rid of duplicates
a.zip(b,c).flatten.uniq

