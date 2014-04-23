def city_borough(borough)

	if borough == "manhattan"
		puts "You must pay a lot to live there!"

	elsif borough == "bronx"
		puts "How often do you visit the gorillas?"

	elsif borough == "staten_island"
		puts "Did you know the Wu Tang Clan is from S.I?"

	elsif borough == "queens"
		puts "You live in the hidden gem!"

	else borough == "brooklyn"
		puts "LoveHate relatsionship with the L?"
	end
end

puts "Which borough do you live in?"
borough = gets.chomp.to_s

city_borough(borough)
		
