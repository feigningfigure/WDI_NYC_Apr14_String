def counter
	n_line = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th_"]
	puts "Please, insert you start point and destination point separated by space"
	points = ["34th", "23rd"]#gets.chomp.split
	n_line & points
	start = points[0]
	destination = points[1]
	p n_line.index(destination) - n_line.index(start)
end

counter




#l_line = %w[8th, 6th, UnionSquare, 3rd, 1st].map { |e| e.gsub(/,/, '') }
#p intersection = n_line & l_line
#p n_line[2..4]