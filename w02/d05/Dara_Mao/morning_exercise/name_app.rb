spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]
#Instructor's solution:
spring_hash = {}

spring_wdi.each do |first_name, last_name|
  first_name, last_name = name.split #set 2 variables: first_name and last_name when each of the name is split
  initials_symbol = [first_name[0], last_name[0]].join.downcase.to_sym
  #first_name[0] is the same as first_name.split("")[0]
  spring_hash[initials_symbol] = [first_name,last_name]
end

puts spring_hash

#turn an array into hash
spring_wdi.each do |name|
  @full_name = name
  spring_hash[0][1] << full_name.split(" ")
end

#get the initials
spring_hash.each do |first, last|
  first_initial= first.initial
  last_intiial= last.initial
  @full_initial = spring_hash.join
end

#prints out :np for Neel Patel
spring_hash.each do |first, last|
  puts ":#{@full_initial}.to_sym"
end





