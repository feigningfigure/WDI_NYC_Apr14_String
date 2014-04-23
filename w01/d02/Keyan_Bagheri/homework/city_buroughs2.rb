def living_in(borough)
	#create if/elsif statement
	if borough == "Brooklyn"
		puts "Brooklyn is where it where it's at!" #returning value
	elsif borough == "Queens"
		puts "Queens is up and coming."
	elsif borough == "Manhattan"
		puts "Manhattan is fun to live in"
	elsif borough == "Bronx" || "The Bronx"
		puts "Go see a Yankees game"
	elsif borough == "Staten Island"
		puts "I'm sorry"
	else
		puts "What! Are you pulling my leg?" #default if answer is not one of the boroughs
		puts "Get out of here!"
	end
end

living_in("Brooklyn") #run method with argument

puts "What borough do you live in?" #prompt user for input
user_home = gets.chomp.capitalize

living_in(user_home) #run method with user input