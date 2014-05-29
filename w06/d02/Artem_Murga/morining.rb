require 'benchmark'
require 'HTTParty'

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

#"mcantor"
users['Max'][:github]
# 38
users["Neel"][:favorite_numbers][1]
# 

p users ["Neel"][:favorite_numbers] = [53, 38, 7, 64]

users["Art"] = {github: "fertingoff", favorite_numbers: [7, 7, 7]}
p users

p users["Neel"][:favorite_numbers].min
p users

p users["Max"][:favorite_numbers].map { |e| e.even? }

all_favorites = users["Neel"][:favorite_numbers] + users["Max"][:favorite_numbers] +  users["Keri"][:favorite_numbers]
p all_favorites.flatten.uniq.sort

puts Benchmark.measure { 

  a = HTTParty('http://google.com')


   }



 
# all_favorites << users["Neel"][:favorite_numbers]
# all_favorites << users["Max"][:favorite_numbers]
# all_favorites << users["Keri"][:favorite_numbers]




# - Add the number 64 to Neel's favorite numbers.

# - Add yourself to the users hash.

# - Return the smallest of Neel's favorite numbers.

# - Return an array of Max's favorite numbers that are also even.

# - Return an array containing all users' favorite numbers, sorted, 
#   and excluding duplicates.