=begin
Getting creative with hashes
=end

def living_in(borough)
	#create hash for custom strings
	borough_hash = {
		"Manhattan" => "Living in Manhattan is fun!",
		"Brooklyn" => "Brooklyn is super hip.",
		"Queens" => "Queens is up and coming.",
		"Bronx" => "The Yankees play in the Bronx.",
		"Staten Island" => "Staten Island is...",
		"Yonkers" => "Where?",
		"Jersey City" => "Get outa here!"
	}
	
	puts borough_hash[borough] #call the hash key from given argument
end


living_in("Brooklyn") #run method with given argument


puts "What borough do you live in?" #prompt user for input
user_home = gets.chomp.capitalize

living_in(user_home) #run method with user input