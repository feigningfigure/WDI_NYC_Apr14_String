require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
    :n_line => [Times Square, 34th, 28th, 23rd, Union Square, and 8th]
    :l_line => [8th, 6th, Union Square, 3rd, and 1st
    ]
    :six_line => [Grand Central, 33rd, 28th, 23rd, Union Square, and Astor Place.]
}


# Make subway lines keys in a hash, while the values are an array of all the stops on each line.

#  Make sure the stops that are the same for different lines have different names
#(i.e. 23rd on the N and on the 6 need to be differentiated)


def number_stops_per_line(start, stop)
	number_stops = stop - start
    
    return number_stops
    puts "You have ${number_stops} of stops to your arrival."
end
