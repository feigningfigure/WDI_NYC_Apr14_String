# The program takes the line and stop that a user is getting on at 
#and the line and stop that user is getting off at and prints the total number of stops for the trip.



# Part 2

# MTA - The NYC Subway System
# Check your folder for the starter code mta.rb.
# There are 3 subway lines:
# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
# All 3 subway lines intersect at Union Square, but there are NO other intersection points.
# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the total number of stops for the trip.


# Hints:
# Get the program to work for a single line before trying to tackle multiple lines.
# Consider diagramming the lines by sketching out the subway lines and their stops and intersection.
# Make subway lines keys in a hash, while the values are an array of all the stops on each line.
# Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)
# Do not begin with implementing a user interface. Begin with implementing the logic that calculates the distance between two stops in the subway system.


# Non-Required:
# Back-End Bonus:
# Implement input validation
# User MUST enter a line and station that is IN the subway network
# If the user enters something else, your program should handle it gracefully
# Add the following line without making major modifications to your code:
# The Q line has the following stops: Times Square, Herald Square, Union Square, Canal St.
# Allow trains to have multiple intersection points
# Google 'ruby array intersect'. Is there away that you might take advantage of ruby's ability to determine shared values between arrays?
# Final Thoughts:
# Will your code work if/when we add ALL of NYC's subway lines?








# All 3 subway lines intersect at Union Square, but there are NO other intersection points.
# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the total number of stops for the trip.


# Hints:
# Get the program to work for a single line before trying to tackle multiple lines.
# Consider diagramming the lines by sketching out the subway lines and their stops and intersection.
# Make sure the stops that are the same for different lines have different names (i.e. 23rd on the N and on the 6 need to be differentiated)
# Do not begin with implementing a user interface. Begin with implementing the logic that calculates the distance between two stops in the subway system.


# Non-Required:
# Back-End Bonus:
# Implement input validation
# User MUST enter a line and station that is IN the subway network
# If the user enters something else, your program should handle it gracefully
# Add the following line without making major modifications to your code:
# The Q line has the following stops: Times Square, Herald Square, Union Square, Canal St.
# Allow trains to have multiple intersection points
# Google 'ruby array intersect'. Is there away that you might take advantage of ruby's ability to determine shared values between arrays?
# Final Thoughts:
# Will your code work if/when we add ALL of NYC's subway lines?


# require_relative 'helper_functions'
# require_relative 'helper_functions_hash'


$trains = {  #ORIGINAL
  :n_line => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}

$lines_hash = {  #UNIQUE IDS, 
								#This could be auto-generated from $stations_hash
  :n_line => [:station000, :station001, :station002, :station003, :station004, :station005],
  :l_line => [:station006, :station007, :station005, :station008, :station009],
  :six_line => [:station0010, :station011, :station012, :station013, :station005, :station014]
}

$stations_hash = {
								#After the friendly names are put in, the rest of this has might be auto-generated.
	station000: {
		friendly_name: "Times Square",
		lines: {
			n_line: 0}
		},
		
	station001: {
		friendly_name: "34th",
		lines: {
			n_line: 1}
		}, 

	station002: {
		friendly_name: "28th",
		lines: {
			n_line: 2}
		},

	station003: {
		friendly_name: "23rd",
		lines: {
			n_line: 3}
		}, 

	station004: {
		friendly_name: "Union Square",
		lines: {
			n_line: 4,
			l_line: 2,
			six_line: 4}
		},

	station005: {
		friendly_name: "8th",
		lines: {
			n_line: 5}
		}, 

	station006: {
		friendly_name: "8th",
		lines: {
			l_line: 0}}, 

	station007: {
		friendly_name: "6th",
		lines: {
			l_line: 1}}, 

	station008: {
		friendly_name: "3rd",
		lines: {
			l_line: 3}}, 

	station009: {
		friendly_name: "1st",
		lines: {
			l_line: 4}}, 

	station010: {
		friendly_name: "Grand Central",
		lines: {
			six_line: 0}},

	station011: {
		friendly_name: "33rd",
		lines: {
			six_line: 1}}, 

	station012: {
		friendly_name: "28th",
		lines: {
			six_line: 2}}, 

	station013: {
		friendly_name: "23rd",
		lines: {
			six_line: 3}}, 

	station014: {
		friendly_name: "Astor Place",
		lines: {
			six_line: 5}}
	}


def get_friendly_station_name(station)
	return $stations_hash[station][:friendly_name]
end

def get_lines_at_station(station)
	return $stations_hash[station][:lines].keys
end

def get_number_of_lines_at_station(station)
	return get_lines_at_station(station).length
end

def get_stations_on_line(line)
	return $lines_hash[line]
end

def is_a_transfer_station?(station)
	if get_lines_at_station(station).length > 1 
		return true
	else 
		return false
	end
end

def get_transfer_points_on_line(line)
	transfer_points_on_line = []
	get_stations_on_line(line).each { |station|
		if is_a_transfer_station?(station)
			transfer_points_on_line << station
		end
	}
	return transfer_points_on_line
end

def get_number_of_transfer_points_on_line
	#
end

def count_stops_between_stations_on_same_line(origin_station, destination_station, line)
	return ($lines_hash[line].index(origin_station).to_f - $lines_hash[line].index(destination_station).to_f).abs.to_i
end

# def count_th


# def go(origin_station, destination_station)
# 	count_the_stops_between(origin_station, destination_station)
# end


puts 'get_friendly_station_name:'
puts get_friendly_station_name(:station014)
puts ""

puts "get_lines_at_station:"
puts get_lines_at_station(:station014)
puts ""

puts "get_lines_at_station:"
puts get_lines_at_station(:station004)
puts ""

puts "get_stations_on_line"
puts get_stations_on_line(:six_line)
puts ""

puts "get_number_of_lines_at_station:"
puts get_number_of_lines_at_station(:station004)
puts ""

puts "is_a_transfer_station?:"
puts is_a_transfer_station?(:station004)
puts ""

puts "is_a_transfer_station?:"
puts is_a_transfer_station?(:station014)
puts ""

puts "count_stops_between_stations_on_same_line"
puts count_stops_between_stations_on_same_line(:station000, :station002, :n_line)
puts ""

puts "count_stops_between_stations_on_same_line"
puts count_stops_between_stations_on_same_line(:station005, :station001, :n_line)
puts ""

puts "get_transfer_points_on_line"
puts get_transfer_points_on_line(:six_line)
puts ""









