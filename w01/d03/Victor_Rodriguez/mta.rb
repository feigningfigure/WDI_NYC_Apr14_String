 def diff_between(start_name, ending_name)
	return start_name-ending_name
  end

end

puts "enter your starting station"
start_name = gets.chomp

puts "enter your ending station"
ending_name = gets.chomp

diff_between (start_name, ending_name)

    # counts the stop between two on the same line
    #
 -  # takes three params:
 +  # takes two params:
    # 1. a starting station name
    # 2. an ending station name
 -  # 3. an array of station names
    #
    # returns an integer equal to how many stops between two stops on the same line
    # if two stops are not on the same line, return nil

#$subway = {
#:l_line => ['8th_L', '6th', 'US', '3rd', '1st']
#:six_line => ['GC', '33rd', '28th_6', '23rd_6', 'US', 'Astor']
#:n_line => ['TS', '34th', '28th_N', '23rd_N', 'US', '8th_N']}
#$subway.each do |key, value|
