spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

# EXERCISE

# Make a hash of names
# The key should be their initials as a symbol
# :np for Neel Patel
# The value should be an array for [first_name, last_name]
# ['Neel', 'Patel'] ALL of these names should be in your hash

spring_hash = Hash.new

spring_wdi.each do |name|
	#going through array and performing split on string and setting to 2 variables it automatically assigns it self according to order
	first_name, last_name = name.split
	#split defaults to space

	#created an array called intials_symbol..pulled first letters and joined them the turned to symbol
	initials_symbol = [first_name[0], last_name[0]].join.downcase.to_sym

	#added hash and assigned initials_symbol as key and gave the array as a value.
	spring_hash[initials_symbol] = [first_name, last_name]
end

puts spring_hash

# Notes
# strings have index as well so first_name[0] will pull out the first letter
# first_name[0]
# is the same as
# first_name.split('')[0]

