#Add the number 64 to Neels favorite numbers

users[Neel][:favorite_numbers].create[3]

#Add yourself to the users hash

users.new {
  "Victor" =>
  :github => "victor"
  :favorite_numbers =>[10,25,0]
}

#Return an array of Max's favorite numbers that are also even
users['Max'][:favorite_numbers][0][1]

#Return an array containing all users favorite numnbers, sorted, and excluding duplicates.
