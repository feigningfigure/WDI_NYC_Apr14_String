spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

# use .select or .map to extract initials from array values
spring_hash = Hash.new
# split each array value of spring_wdi into first name and last. for the method .split, the default split character is the space
spring_wdi.each do |name|
  first_name, last_name = name.split
  # in the same way first value in arrays have index 0, the letters in a string also have the same index progression for each letter
  initials_symbol = [first_name[0], last_name[0]].join.downcase.to_sym
  # now create the array with the keys and values
  spring_hash[initials_symbol] = [first_name, last_name]
end

puts spring_hash
