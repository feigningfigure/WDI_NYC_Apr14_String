spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

# def array_names_to_initials(array)
# 	initials = Array.new
# 	initials_array = Array.new
# 	temp_array = Array.new
# 	array.each do |full_name|
# 		temp_array = full_name.split(" ")
# 		temp_array.each do |name|
# 			initials = name[0]
# 			initials_array << initials
# 		end
# 	end
# 	initialize_hash = {}
# 	for num in (0..(array.length-1))
# 		initialize_hash[initials_array[num]] = array[num]
# 	end
# end

# p array_names_to_initials(spring_wdi)

spring_hash = Hash.new

spring_wdi.each do |name|
	first_name, last_name = name.split
	initials_symbol = [first_name[0], last_name[0]].join.downcase.to_sym
	spring_hash[initials_symbol] = [first_name, last_name]
	end

	puts spring_hash