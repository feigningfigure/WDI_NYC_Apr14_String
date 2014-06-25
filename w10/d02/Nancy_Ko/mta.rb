# global hash of arrays of strings of station names
$trains = {
  :n => ["Times Square", "34th", "28th", "23rd", "Union Square",  "8th"],
  :l => ["8th", "6th", "Union Square", "3rd", "1st"],
  :six => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
}


class Subway

attr_accessor :on_line, :off_line

	def init(on_line, off_line)
		@on_line = on_line
		@off_line = off_line
	end

	def check_same_line(on_line, off_line)
		if on_line == off_line 

	  else 
	    return false
		end
	end 

end

puts "what line are you on, n, l or six?"
on_line = gets.chomp.to_sym
puts "what station are you on"
start = gets.chomp.capitalize
puts "what station do you want to get off"
dest = gets.chomp.capitalize

