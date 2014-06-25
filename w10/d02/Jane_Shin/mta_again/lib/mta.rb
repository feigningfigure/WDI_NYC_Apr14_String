class Mta

	subway_lines = {
		n_line: ["42", "34", "28", "23", "14", "8"],
		six_line: ["42", "33", "28", "23", "14", "ap"],
		l_line: ["8", "6", "14", "3", "1"]
	}
	
	def initialize(subway_lines)
		@n_line = subway_lines[:n_line]
		@six_line = subway_lines[:six_line]
		@l_line = subway_lines[:l_line]
	end

	def count_stops
		puts "What line is your starting station on?"
		starting_line = gets.chomp

		puts "What station are you getting on?"
		starting_station = gets.chomp

		puts "What line is your destination station on?"
		destination_line = gets.chomp

		puts "What station is your destination?"
		destination_station = gets.chomp

		if starting_line == destination_line
			return starting_line.index(destination_station) - starting_line.index(starting_station)
		else
			# ugh need to absolute value these
			first_part = starting_line.index("14") - starting_line.index(starting_station)
			
			second_part = destination_line.index("14") - destination_line.index(destination_station)

			return first_part + second_part

	end

end