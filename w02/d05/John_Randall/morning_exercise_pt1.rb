
$spring_wdi = ["Joe Park", "Artem Murga", "John Randall", "Wilson Chan", "Nelson Schubart", "Christopher Bajorin", "Christopher Lee", "Ben Ticsay", "Joel Rosenblatt", "Declan Van Welie", "Andrew Wallace", "Emmanuel Tucker", "Nancy Ko", "Dara Mao", "Jonathan Milgrom", "Liz Goldstein", "Jane Shin", "Victor Rodriguez", "David Montricher", "Kyle Sweet", "Keyan Bagheri", "Mason Tang", "Sophie Laffont", "Zack Levine"]

name_hash = {}

$spring_wdi.each do |name|
	name_first = name.split.first
	name_last = name.split.last
	initial_first = name_first.split("").first
	initial_last = name_last.split("").first
	name_initials = "#{initial_first.downcase + initial_last.downcase}".to_sym

	name_hash[name_initials] = [name_first, name_last]
end


puts name_hash