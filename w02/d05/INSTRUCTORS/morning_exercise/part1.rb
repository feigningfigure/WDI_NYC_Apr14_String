spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

spring_hash = Hash.new

spring_wdi.each do |name|
	first_name, last_name = name.split
	initials_symbol =  [first_name[0], last_name[0]].join.downcase.to_sym
	spring_hash[initials_symbol] = [first_name, last_name]
end

puts spring_hash