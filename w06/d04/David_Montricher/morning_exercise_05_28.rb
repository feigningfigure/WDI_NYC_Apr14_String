include enumerable

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









# Add number 64 to Neel's favorite numbers
users["Neel"][:favorite_numbers] << 64
# or you could do
users["Neel"][:favorite_numbers].push(64)

# Add yourself to the users hash
users ["David"] => {
        :github => "montricher",
        :favorite_numbers => [9, 12, 31]
      }

# Return the smallest of Neel's favorite numbers
smallest_favorite_number = []
users["Neel"][:favorite_numbers].min
  smallest_favorite_number << number
end
smallest_favorite_number

# Return an array of Max's favorite numbers that are also even
favorite_even_numbers = []
if users["Max"][:favorite_numbers].each do |number|
  number % 2 = 0
  favorite_even_numbers << number
end
favorite_even_numbers

# Return an array containing all users' favorite numbers, sorted, and excluding duplicates
# do it as a loop
all_favorite_numbers = []
users.each do |user|
  all_favorite_numbers << [:favorite_numbers].uniq

# or do it as variables being added and zipped on 1 array. flatten will put all index values into 1 single array, and uniq will eliminate duplicates
a = users["Max"][:favorite_numbers]
b = users["Neel"][:favorite_numbers]
c = users["Keri"][:favorite_numbers]
a.zip(b,c).flatten.uniq



