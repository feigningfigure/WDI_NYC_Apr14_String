spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

# step 1 - make a hash
spring_hash = Hash.new

# step 2 - iterate through the array
#symbol and then 2 strings.
# step 3 start by setting the value
# the first value in an array is a string
# step 4 split the array- the item comes first


	spring_wdi do |name|
		first_name , Last_name = name.split
		# step 5 strings have arrays so I can look up the first character
		# step 6 join initials, downcase them, and turn them into symbols
		initials_symbols =first_name[0],last_name[0].join.downcase.to_sym
		spring_hash[initials_symbol] = [first_name, last_name]
	end

	puts spring_hash




# 	Test .split in pry
# 	[17] pry(main)> name = "sophie laffont"
# "sophie laffont"
# [18] pry(main)> name.split
# [
#     [0] "sophie",
#     [1] "laffont"
# ]
