#original idea from Keyan

def borough_identifier2(borough)
	borough_hash = {
		"Bronx" => "You live in the Bronx!",
		"Queens" => "You live in Queens!",
		"Brooklyn" => "You live in Brooklyn!",
		"Staten Island" => "You live in Staten Island!",
		"Manhattan" => "You live in Manhattan"
	}
	#calling 
	puts borough_hash[borough]
end

print "Which borough do you live in? "
borough = gets.chomp.capitalize
borough_identifier2(borough)