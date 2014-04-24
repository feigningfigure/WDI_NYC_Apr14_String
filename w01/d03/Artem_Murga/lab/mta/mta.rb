require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l => ["8th_s", "6th", "Union Square", "3rd", "1st"],
  :s => ["Grand Central", "33rd", "28th_s", "23rd_s", "Union Square", "Astor Place"]
}

#helper functions just for a moment to be here


  # deteremines if a transfer is needed
  #
  # takes two params:
  # 1. a station name
  # 2. another station name
  #
  # returns true if transfer is need, or false for all other cases
  

def start
	puts "Please, type your start station"
	start_name =  gets.chomp # "Times Square"
	puts "Please, type your destination station"
	ending_name = gets.chomp # "3rd" #gets.chomp
	#need_to_transfer? doesn't work
	if need_to_transfer?(start_name, ending_name) == false
		count_stops(start_name, ending_name)
	else 
		puts "need to figure out about 2 lines"
	end
end

start

# $trains.each do |key, value|
#     inspect_stations(value)

# 
# p need_to_transfer?("Time Square", "28th")
# p need_to_transfer?("Time Square", "6th")




