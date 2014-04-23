#define function that takes as argument the borough
#print appropriate response according to input

def borough_identifier(borough)
	if borough == "Queens"
		puts "You live in #{borough}!"
	elsif borough == "Bronx"
		puts "You live in #{borough}!"
	elsif borough == "Brooklyn"
		puts "You live in #{borough}!"
	elsif borough == "Staten Island"
		puts "You live in #{borough}!"
	elsif borough == "Manhattan"
		puts "You live in #{borough}!"
	else
		puts "I don't think you live in the boroughs."
	end
end

print "Which borough do you live in? "
residence = gets.chomp.capitalize
borough_identifier(residence)