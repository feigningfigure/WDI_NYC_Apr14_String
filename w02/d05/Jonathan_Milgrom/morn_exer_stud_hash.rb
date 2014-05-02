spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

# WRONG!!!!!
# hash = {}
# spring_wdi.each do |x|
# 	initials_array
# 	array << x.split(" ")
# 	array.each do |name|
# 		initials_array << x.split("")[0]
# 	end
# 	hash[initials_array[0].to_sym] => array[0]
# end
# puts hash

spring_hash = Hash.new

spring_wdi.each do |name|
	
	# array = name.split
	# REMEMBER: .SPLIT CREATES AN ARRAY!!!
	# first_name = array[0]
	# last_name = array[1]
	first_name, last_name = name.split 
	# initials_array = [first_name.split("")[0], last_name.split("")[0]]
	# initials_symbol = initials_array.join.downcase.to_sym
	#buttttt strings have an index, which can be used like an array
	initials_symbol = [first_name[0], last_name[0]].join.downcase.to_sym
	spring_hash[initials_symbol] = [first_name, last_name]
end
puts spring_hash


