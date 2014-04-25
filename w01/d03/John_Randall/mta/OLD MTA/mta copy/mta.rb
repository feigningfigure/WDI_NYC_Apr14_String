
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


require_relative 'helper_functions'

# global hash of arrays of strings of station names

# There are 3 subway lines:
# The N line has the following stops: Times Square, 34th, 28th, 23rd, Union Square, and 8th
# The L line has the following stops: 8th, 6th, Union Square, 3rd, and 1st
# The 6 line has the following stops: Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.
# Make subway lines keys in a hash, while the values are an array of all the stops on each line.


$trains = {
  :n_line => ["Times Square", "34th", "w28th", "23rd", "Union Square ", "8th"],
  :l_line => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six_line => ["Grand Central", "33rd", "e28th", "23rd", "Union Square", "Astor Place"]
}

# $trains_better_hash = {
#   :n_line => [
#   		station001, 
#   		station002, 
#   		station003, 
#   		station004, 
#   		station005, 
#   		station006, 
#   	]
#   :l_line => {
#   	["8th", "6th", "Union Square", "3rd", "1st"]},
  
#   :six_line => {
#   	["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
# 	}
# }

# $stations_better_hash = {
#   		station001: ["Times Square", [:n_line, 0]]
#   		station002: ["34th", [:n_line, 1]]
#   		station003: ["28th", [:n_line, 2]]
#   		station004: ["23rd", [:n_line, 3]]
#   		station005: ["Union Square ", [:n_line, 4], [:l_line, 2], [:six_line, 4]]
#   		station006: ["8th", [:n_line, 5]], 
#   		station007: ["8th", [:l_line, 0]], 
#   		station008: ["6th", [:l_line, 1]], 
#   		station009: ["3rd", [:l_line, 2]], 
#   		station010: ["1st", [:l_line, 3]], 
#   		station010: ["Grand Central", [:six_line, 0]],
#   		station011: ["33rd", [:six_line, 1]],
#   		station012: ["28th", [:six_line, 2]],
#   		station013: ["23rd", [:six_line, 3]],
#   		station014: ["Astor", [:six_line, 4]
# }


# $stations_better_better_hash = {
#   		station001: {
#   			name: "Times Square",
#   			n_line: 0,
#   			l_line: nil,
#   			six_line: nil}

#   		station002: {
#   			name: "34th",
#   			n_line: 0,
#   			l_line: nil}

#   		}



#   		station002: ["34th", [:n_line, 1]]
#   		station003: ["28th", [:n_line, 2]]
#   		station004: ["23rd", [:n_line, 3]]
#   		station005: ["Union Square ", [:n_line, 4], [:l_line, 2], [:six_line, 4]]
#   		station006: ["8th", [:n_line, 5]], 
#   		station007: ["8th", [:l_line, 0]], 
#   		station008: ["6th", [:l_line, 1]], 
#   		station009: ["3rd", [:l_line, 2]], 
#   		station010: ["1st", [:l_line, 3]], 
#   		station010: ["Grand Central", [:six_line, 0]],
#   		station011: ["33rd", [:six_line, 1]],
#   		station012: ["28th", [:six_line, 2]],
#   		station013: ["23rd", [:six_line, 3]],
#   		station014: ["Astor", [:six_line, 4]
# }


# Unique id : friendly name
# unique id : line , stop number
# unique id : addional line, stop number

  		

		

# $stations = {
# 	station000: ["Times Square", [:n_line]]
# 	station001: ["34th", [:n_line]]
# 	station002: ["28th", [:n_line]]
# 	station000: ["23rd", [:n_line, :l_line, :six_line]]
# 	station001: ["Union Square", [:n_line]]
# 	station002: ["8th", [:n_line]]
# 	station000: ["8th", [:n_line]]
# 	station001: ["6th", [:n_line]]
# 	station002: ["3rd"]
# 	station000: ["1st", [:n_line]]
# 	station001: ["Grand Central", [:n_line]]
# 	station002: ["33rd", [:n_line]]
# 	station000: ["28th", [:n_line]]
# 	station001: ["23rd", [:n_line]]
# 	station002: ["Astor Place", [:n_line]]
# 	station000: ["Times Square", [:n_line]]
# 	station001: ["34th", [:n_line]]
# 	station002: ["28th", [:n_line]]
# 	station000: ["Times Square", [:n_line]]
# 	station001: ["34th", [:n_line]]
# 	station002: ["28th", [:n_line]]
# 	station000: ["Times Square", [:n_line]]
# 	station001: ["34th", [:n_line]]
# 	station002: ["28th", [:n_line]]
# 	station000: ["Times Square", [:n_line]]
# 	station001: ["34th", [:n_line]]
# 	station002: ["28th", [:n_line]]
# 	station000: ["Times Square", [:n_line]]
# 	station001: ["34th", [:n_line]]
# 	station002: ["28th", [:n_line]]
# 	station000: ["Times Square", [:n_line]]
# 	station001: ["34th", [:n_line]]
# 	station002: ["28th", [:n_line]]
# 	station000: ["Times Square", [:n_line]]
# 	station001: ["34th", [:n_line]]
# 	station002: ["28th", [:n_line]]
	
# }


#puts count_stops("Times Square", "w28th")
need_to_transfer?("Times Square", "w28th")






