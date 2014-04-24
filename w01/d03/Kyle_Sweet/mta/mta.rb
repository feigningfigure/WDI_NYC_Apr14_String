require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n_line => ["N Line: Times Square", "N Line: 34th Street", "N Line: 28th Street", "N Line: 23rd Street", "N Line: Union Square"],
  :l_line => ["L Line: 8th Ave", "L Line: 6th Ave", "L Line: Union Square", "L Line: 3rd Ave", "L Line: 1st Ave"],
  :six_line => ["6 Line: Grand Central", "6 Line: 33rd Street", "6 Line: 28th Street", "6 Line: 23rd Street", "6 Line: Union Square", "6 Line: Astor Place"]
}


print "Today we are running three subway lines: N, L, 6 - Please type the desired line:"

user_train=gets.chomp

if user_train == "N"
puts "Here are a list of stops on the N_line: #{$trains[:n_line]}:
Please tell me an origin point from the menu above"
stop1=gets.chomp
  puts "Please tell me your destination from the same menu"
stop2=gets.chomp
puts "You are riding #{stop1} to #{stop2}"


# for $trains[:n_line] in (0..$trains[:n_line].length)
#   puts $trains[:n_line][index]

# # $trains[:n_line]}.each_with_index do |item,index|
end


