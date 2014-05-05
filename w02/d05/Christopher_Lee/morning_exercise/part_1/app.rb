spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

@initial_hash = {}


# spring_wdi.each do |item|
#   temp_array = item.split(" ")
#   holder = [ ]
#   temp_array.each do |word|
#     #holder = [ ]
#     holder << word[0]
#   @initial_hash[holder.join.downcase.to_sym ] = item
#   end
# end

spring_wdi.each do |item|
  temp_array = item.split(" ")
  holder = [ ]
  temp_array.each do |word|
    #holder = [ ]
    holder << word[0]
  end
  @initial_hash[holder.join.downcase.to_sym ] = item
end

puts @initial_hash

def make_initials(array)
  initial_hash = {}
  array.each do |item|
  temp_array = item.split(" ")
  holder = [ ]
    temp_array.each do |word|
      #holder = [ ]
      holder << word[0]
    end
  initial_hash[holder.join.downcase.to_sym ] = item
  end
  puts initial_hash
end

#final
def make_initials(array)
  initial_hash = {}
  array.each do |item|
  temp_array = item.split(" ")
  holder = [ ]
    temp_array.each do |word|
      #holder = [ ]
      holder << word[0]
    end
  initial_hash[holder.join.downcase.to_sym ] = item.split(" ")
  end
  puts initial_hash
end

##NEEL's way

spring_hash = Hash.new

#handle value first
spring_wdi.each do |name|
  first_name, last_name = name.split
  initials_symbol = [first_name[0], last_name[0]].join.downcase.to_sym
  spring_hash[initials_symbol] = [first_name, last_name]
end




#   # hash within array
#   #first split
#   test = [
#     [0] "Joe",
#     [1] "Park"
# ]

# test = ["Joe","Park"]

# holder = []

# test.each do |word|
#   # clear holder each time holder = []
#   holder << word[0]
# end

# holder.join.downcase.to_sym
# #=> :jp

# initial_hash[holder.join.downcase.to_sym ] = word

# "Joe"[0] = J
