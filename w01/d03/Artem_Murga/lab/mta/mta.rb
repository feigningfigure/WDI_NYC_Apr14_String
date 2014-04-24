require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
  :l => ["8th_s", "6th", "Union Square", "3rd", "1st"],
  :s => ["Grand Central", "33rd", "28th_s", "23rd_s", "Union Square", "Astor Place"]
}

def start
	puts "Please, type your start line"
	start_line = gets.chomp.to_sym
	puts "Please, type your destination line"
	destination_line = gets.chomp.to_sym
	puts "Please, type your start station"
	start_station = gets.chomp
	puts "Please, type your destination station"
	destination_station = gets.chomp
	if start_line == destination_line
		distance = start_line.index(destination_station) - start_line.index(start_station)
		puts "The distance between stations is #{distance} stations"
	else
		puts "I can't understand you. Please, try again"
	end
end

start


