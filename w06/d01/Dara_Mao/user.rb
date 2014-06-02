users = {
      "Max" => {
        :github => "mcantor",
        :favorite_numbers => [14, 38, 501],
      },
      "Neel" => {
        :github => "darthneel",
        :favorite_numbers => [53, 38, 7, 64],
      },
      "Keri" => {
        :github => "ktoksu",
        :favorite_numbers => [1, 83, 14],
      },
       "Dara" => {
        :github => "daramao",
        :favorite_numbers => [6, 75, 12],
      }
    }

users["Max"][:github]

users["Neel"][:favorite_numbers][1]

users["Neel"][:favorite_numbers].push(64)

users["Dara"] ={:github => "daramao", :favorite_numbers => }

#- Return the smallest of Neel's favorite numbers.

 users["Neel"][:favorite_numbers].min

#- Return an array of Max's favorite numbers that are also even.
i = 0
while i < users["Max"][:favorite_numbers].length
  if users["Max"][:favorite_numbers][i] % 2 = 0
      users["Max"][:favorite_numbers][i]
    end
  end

users["Max"][:favorite_numbers].select {|num| num.even?}

#- Return an array containing all users' favorite numbers, sorted, and excluding duplicates.
array = []
users.each do |name|
  array << name[:favorite_numbers]
end

array.uniq.sort
